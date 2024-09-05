Here is the complete **README.md** content wrapped entirely in code formatting (code block), so you can directly copy and paste it into GitHub:

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
git clone https://github.com/tachneo/bsc-wallet-generator.git
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

### Wallet 
![image](https://github.com/user-attachments/assets/bd2e30eb-ebb1-4ff0-8498-be776b336f5f)


### Export Wallets
![image](https://github.com/user-attachments/assets/738357d1-9a7c-47e6-8749-73e9ab4ea8b1)

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
