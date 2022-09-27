import algosdk from "algosdk";

export const txAlgo = async(
  algodClient: algosdk.Algodv2,
  senderMnemonic: string,
  receiverAddress: string,
  amount: number
) => {
  try {
    const suggestedParams = await algodClient.getTransactionParams().do()
    const account = algosdk.mnemonicToSecretKey(senderMnemonic)

    const txn = algosdk.makePaymentTxnWithSuggestedParamsFromObject({
      from: account.addr,
      to: receiverAddress,
      amount,
      suggestedParams
    })

    const signedTx = txn.signTxn(account.sk)
    const tx = await algodClient.sendRawTransaction(signedTx).do()
    await algosdk.waitForConfirmation(algodClient, tx.txId, 4)
    console.log('Transaction ID: '+tx.txId)
  } catch (err) {
    console.log('err', err)
  }
}