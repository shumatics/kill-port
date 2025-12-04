# kill-port

![License](https://img.shields.io/badge/license-LICENSE-green)

## 📝 Description

It is a simple kill port script. When you run an app using maybe ``` npm run dev ``` and you want to close it. On some device it will close the process but the port will still be in use. This small script helps the user to kill the service completely making sure this port is ready and available to use again.

## 📁 Project Structure

```
.
├── LICENSE
└── kill-port.sh
```

## Instruction

1. Clone the this repo main branch to your desktop.
2. Open the folder and use this command to make the .sh exec. ``` chmod +x kill-port.sh ```
3. Link this folder to your .zshrc. This is mainly located in ~/.zshrc
4. Use nano or vim to edit .zshrc
5. Add the line to your .zshrc : ``` export PATH="$PATH:{folder}/kill-port" ```
6. Replace {folder} with the correct path to this project

Once setup, write ``` source .zshrc ``` to apply the new changes

On your terminal, you can use it like below

``` kill-port.sh -p 1234 ```

This will list all the service listening on this port

<img width="819" height="117" alt="image" src="https://github.com/user-attachments/assets/d54aa897-aebd-47a0-a41a-82e1124b785f" />

Write the PID number and it will ask for your password. This will kill the port and you can use it for another services.

## 👥 Contributing

Contributions are welcome! Here's how you can help:

1. **Fork** the repository
2. **Clone** your fork: `git clone https://github.com/shumatics/kill-port.git`
3. **Create** a new branch: `git checkout -b feature/your-feature`
4. **Commit** your changes: `git commit -am 'Add some feature'`
5. **Push** to your branch: `git push origin feature/your-feature`
6. **Open** a pull request

Please ensure your code follows the project's style guidelines and includes tests where applicable.

## 📜 License

This project is licensed under the LICENSE License.
