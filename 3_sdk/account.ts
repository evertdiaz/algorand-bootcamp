import algosdk from "algosdk";

export const createAccount = async() => {
  const account = algosdk.generateAccount()
  console.log(account)
  const mnemonic = algosdk.secretKeyToMnemonic(account.sk)
  console.log(mnemonic)
}