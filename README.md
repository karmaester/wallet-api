# Wallet API

> Uses in built rails functionality for registration and session handling with cors. This API serves the project [Wallet Frontend](https://github.com/karmaester/WalletFrontend)

## Built With

- Ruby
- Ruby on rails
- Cors

## Pre-requisites

- Ruby 3.0.0
- Rails gem
- Bundle

## How it works

- Clone the repository locally from [here](git@github.com:karmaester/wallet-api.git)
- Open re-former folder and run `Bundle install`
- Start postgresql db `sudo service postgresql start`
- Run `rails db:migrate`
- Run `rails server`

## How it works

If you start rails server in port 3001, working endpoints will be so:

To get the current Bitcoin price: 
- http://127.0.0.1:3001/current_price

Handling registration and session:
- http://127.0.0.1:3001/registrations
- http://127.0.0.1:3001/sessions

Summing up transactions:
- http://127.0.0.1:3001/transactions

Getting list of user's transactions:
- http://127.0.0.1:3001/users/${id}/transactions

## Author

👤 **Khristian Rojas**

- Github: [@githubhandle](https://github.com/karmaester)
- Linkedin: [linkedin](https://www.linkedin.com/in/khristian-rojas/)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](https://github.com/karmaester/wallet-api/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is MIT licensed.

