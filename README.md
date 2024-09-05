Here is the **README.md** content in GitHub-ready markdown format. You can copy and paste it directly into your `README.md` file.

```md
# BSC Wallet Generator

A Python-based GUI application that generates Binance Smart Chain (BSC) wallet addresses using the secp256k1 elliptic curve and Keccak-256 hashing. This tool allows users to generate multiple wallet addresses, view them in a graphical interface, and export the wallet details (Private Key and Address) to a text file.

## Features

- Generate multiple Binance Smart Chain (BSC) wallet addresses.
- Display wallet details (Private Key and Address) in a GUI.
- Export wallet details to a `.txt` file.
- Uses the secp256k1 elliptic curve for key generation.
- Keccak-256 hashing for Ethereum-compatible addresses (BSC uses the same address format as Ethereum).

## Requirements

- Python 3.7 or later
- The following Python packages:
  - `ecdsa`: For elliptic curve key generation.
  - `pycryptodome`: For Keccak-256 hashing.
  - `tkinter`: For the graphical user interface.

## Installation

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/bsc-wallet-generator.git
cd bsc-wallet-generator
```

### 2. Set up Python environment

It’s recommended to use a virtual environment to avoid conflicts with system packages. Create a virtual environment using `venv` or `virtualenv`.

```bash
python -m venv venv
source venv/bin/activate  # On Windows use: venv\Scripts\activate
```

### 3. Install Dependencies

Use `pip` to install the required dependencies:

```bash
pip install ecdsa pycryptodome
```

## Usage

### 1. Run the Application

After installing the dependencies, you can run the BSC Wallet Generator using the following command:

```bash
python bsc_wallet_generator.py
```

### 2. Generating Wallets

- The application will start with a GUI interface.
- By default, the input field will be prefilled with the number `10` to generate 10 wallet addresses. You can change this number.
- Click on the "Generate Wallets" button to generate the wallet addresses and display the Private Key and Address in the text box.

### 3. Exporting Wallets

- After generating the wallets, you can export the Private Key and Address details by clicking the "Export Wallets" button.
- The wallets will be saved in a text file in the location of your choice.

## Screenshots

### Wallet Generation
![Wallet Generation](screenshots/wallet_generation.png)

### Export Wallets
![Export Wallets](screenshots/export_wallets.png)

## Technologies Used

- **Python**: For the core logic and GUI.
- **Tkinter**: For building the graphical user interface.
- **ecdsa**: For secp256k1 elliptic curve key generation.
- **pycryptodome**: For Keccak-256 hashing.

## Contribution

Feel free to fork this repository, make improvements, and submit a pull request! Contributions to improve features or resolve issues are welcome.

1. Fork the repo.
2. Create your feature branch (`git checkout -b feature/my-feature`).
3. Commit your changes (`git commit -m 'Add my feature'`).
4. Push to the branch (`git push origin feature/my-feature`).
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.
```

### Notes:
- Replace the repository link (`https://github.com/yourusername/bsc-wallet-generator.git`) with your actual GitHub repository URL.
- You may need to add the screenshots (mentioned in the `Screenshots` section) to the appropriate folder in your repository (`screenshots/wallet_generation.png` and `screenshots/export_wallets.png`).

This format should work perfectly for GitHub's `README.md` rendering. Let me know if you need any other changes!
