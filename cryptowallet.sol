import os
import secrets
import ecdsa
from Crypto.Hash import keccak  # Import Keccak from pycryptodome
import tkinter as tk
from tkinter import filedialog, messagebox
from tkinter import scrolledtext

# Function to generate BSC wallets
def generate_wallets():
    try:
        result_box.delete('1.0', tk.END)
        
        # Input validation: check if the input is a positive integer
        number_of_wallets = wallet_count.get().strip()  # Remove extra spaces
        print(f"Input for number of wallets: '{number_of_wallets}'")  # Debug output
        
        if not number_of_wallets.isdigit():
            raise ValueError("Input is not a valid positive integer.")

        number_of_wallets = int(number_of_wallets)
        if number_of_wallets <= 0:
            raise ValueError("Number of wallets must be a positive integer.")

        wallets = []
        for _ in range(number_of_wallets):
            # Generate a private key
            private_key = secrets.token_hex(32)
            private_key_bytes = bytes.fromhex(private_key)

            # Generate public key using ECDSA and secp256k1 curve
            signing_key = ecdsa.SigningKey.from_string(private_key_bytes, curve=ecdsa.SECP256k1)
            verifying_key = signing_key.get_verifying_key()
            public_key = b"\x04" + verifying_key.to_string()  # Add prefix 0x04

            # Hash the public key using Keccak-256 to get the address
            keccak_hash = keccak.new(digest_bits=256)
            keccak_hash.update(public_key[1:])  # Exclude the 0x04 prefix
            address = "0x" + keccak_hash.hexdigest()[-40:]  # Get the last 20 bytes (40 hex characters)

            wallets.append({
                "Private Key": private_key,
                "Address": address
            })

        # Display wallets in the result box
        for wallet in wallets:
            result_box.insert(tk.END, f"Private Key: {wallet['Private Key']}\n", "private_key")
            result_box.insert(tk.END, f"Address: {wallet['Address']}\n\n", "address")

        global wallets_data
        wallets_data = wallets

    except ValueError as e:
        print(f"Error: {e}")  # Debug output
        messagebox.showerror("Input Error", "Please enter a valid positive number of wallets.")

# Function to export wallet details to a file
def export_wallets():
    if not wallets_data:
        messagebox.showinfo("No Wallets", "No wallets available to export.")
        return

    file_path = filedialog.asksaveasfilename(defaultextension=".txt", filetypes=[("Text files", "*.txt")])
    if file_path:
        with open(file_path, "w") as file:
            for wallet in wallets_data:
                file.write(f"Private Key: {wallet['Private Key']}\n")
                file.write(f"Address: {wallet['Address']}\n\n")
        messagebox.showinfo("Success", "Wallets exported successfully.")

# Initialize the main window
window = tk.Tk()
window.title("Advanced BSC Wallet Generator")
window.geometry("600x500")
window.configure(bg="#2d2f36")

# Title Label
title_label = tk.Label(window, text="BSC Wallet Address Generator", font=("Arial", 16), bg="#2d2f36", fg="#00ff00")
title_label.pack(pady=10)

# Input field to specify the number of wallets to generate (prefilled with 10)
tk.Label(window, text="Number of Wallets:", font=("Arial", 12), bg="#2d2f36", fg="white").pack()
wallet_count = tk.Entry(window, font=("Arial", 12))
wallet_count.insert(0, "10")  # Prefill with the value 10
wallet_count.pack(pady=5)

# Button to generate wallets
generate_button = tk.Button(window, text="Generate Wallets", font=("Arial", 12), bg="#007acc", fg="white", command=generate_wallets)
generate_button.pack(pady=10)

# Scrolled Text box to display generated wallets
result_box = scrolledtext.ScrolledText(window, height=15, width=60, font=("Arial", 10), bg="#1e1e24", fg="white")
result_box.pack(pady=10)

# Define custom tags for colored text
result_box.tag_config("private_key", foreground="#ff7f50")
result_box.tag_config("address", foreground="#7fff00")

# Button to export wallet details
export_button = tk.Button(window, text="Export Wallets", font=("Arial", 12), bg="#28a745", fg="white", command=export_wallets)
export_button.pack(pady=10)

# Wallet data for exporting
wallets_data = []

window.mainloop()
