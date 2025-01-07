(async()=>{
    const address = "0x599DB3Ffbba36FfaAB3f86e92e1fCA0465b2CDeA";
    //ABI : Application Binary Interface
	//The ABI Array contains all functions, inputs and outputs, as well as all variables and their types from a smart contract.
	const abiArray =[
	{
		"inputs": [
			{
				"internalType": "uint256",
				"name": "_myUint",
				"type": "uint256"
			}
		],
		"name": "SetMyUint",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [],
		"name": "myUint",
		"outputs": [
			{
				"internalType": "uint256",
				"name": "",
				"type": "uint256"
			}
		],
		"stateMutability": "view",
		"type": "function"
	}
];
    const contractInstance = new web3.eth.Contract(abiArray, address);
    console.log(await contractInstance.methods.myUint().call());
	let accounts = await web3.eth.getAccounts();
	let txResult = await contractInstance.methods.SetMyUint(147).send({from: accounts[0]});
    console.log(await contractInstance.methods.myUint().call());
	console.log(txResult);
})()