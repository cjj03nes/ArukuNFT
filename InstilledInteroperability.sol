
pragma solidity ^0.8.20;

// CrossChain between ETH, BASE, AND STELLAR




contract InstilledInteroperability {
    struct Blockchain {
        string chainName;
        uint256 chainId;
        string[] chainRpcUrls;
        string chainCurrency;
    }

    struct TokenAsset {
        string tokenAssetName;
        uint8 tokenAssetDecimal;
        string tokenAssetSymbol;
        address tokenAssetContractAddress;
        address ownerAddress;
    }
__________________________________________

    mapping(uint256 => Blockchain) public verifiedBlockchains;
    mapping(uint256 => mapping(string => TokenAsset)) public verifiedTokenAssets;
__________________________________________

    constructor() {
verifiedBlockchains[1] = Blockchain(
        chainName: "Ethereum",
        chainId: 1,
        blockExplorer: "https://etherscan.io/" ,
        chainRpcUrls:[ ["https://eth.llamarpc.com"] , ["https://eth.blockrazor.xyz"], ["https://ethereum-rpc.publicnode.com"], ["https://eth-pokt.nodies.app"],
["https://eth.meowrpc.com"] ],
        chainCurrency: "ETH" );
    
verifiedTokenAssets[1] = TokenAsset( 
        tokenAssetName : "United States Dollar Tether",
        tokenAssetDecimal : 6,
        tokenAssetSymbol : "USDT"
        tokenAssetContractAddress : 0x );

verifiedTokenAssets[2] = TokenAsset( 
        tokenAssetName : "United States Dollar Coin",
        tokenAssetDecimal : 6,
        tokenAssetSymbol : "USDC"
        tokenAssetContractAddress : 0x );
 }

constructor() {
verifiedBlockchains[2] = Blockchain(
        chainName: "Base",
        chainId: 8453,
        blockExplorer: "https://basescan.org/",
        chainRpcUrls:[ ["https://base-rpc.publicnode.com"] , ["https://base.meowrpc.com"], ["wss://base.callstaticrpc.com"], ["https://base-pokt.nodies.app"], ["https://0xrpc.io/base"] ],
        chainCurrency: "ETH" );


    
verifiedTokenAssets[1B] = TokenAsset( 
        tokenAssetName : "United States Dollar Tether",
        tokenAssetDecimal : 6,
        tokenAssetSymbol : "USDT"
        tokenAssetContractAddress : 0x  );

verifiedTokenAssets[2B] = TokenAsset( 
        tokenAssetName : "United States Dollar Coin",
        tokenAssetDecimal : 6,
        tokenAssetSymbol : "USDC"
        tokenAssetContractAddress : 0x );
        }


__________________________________________


constructor() {
verifiedBlockchains[3] = Blockchain(
        chainName: "Stellar Network",
        chainId: S5,
        blockExplorer: "https://stellar.expert/explorer/public",
        chainRpcUrls:[ ["https://svc.blockdaemon.com/stellar/mainnet/native/soroban-rpc"] , ["https://rpc.ankr.com/stellar_soroban"], ["https://soroban-rpc.mainnet.stellar.gateway.fm"], ["https://stellar-soroban-public.nodies.app"], ["https://mainnet.sorobanrpc.com"] ],
        chainCurrency: "XLM" );
    
verifiedTokenAssets[1C] = TokenAsset( 
        tokenAssetName : "United States Dollar Tether",
        tokenAssetDecimal : 6,
        tokenAssetSymbol : "USDT"
        tokenAssetContractAddress : 0x );

verifiedTokenAssets[2C] = TokenAsset( 
        tokenAssetName : "United States Dollar Coin",
        tokenAssetDecimal : 6,
        tokenAssetSymbol : "USDC"
        tokenAssetContractAddress : 0x );  }


__________________________________________


    function determineOperation(uint256 fromChainId, uint256 toChainId, string memory tokenSymbol) public view returns (string memory) {
        TokenAsset memory fromToken = verifiedTokenAssets[fromChainId][tokenSymbol];
        TokenAsset memory toToken = verifiedTokenAssets[toChainId][tokenSymbol];
        
        if (keccak256(bytes(fromToken.tokenAssetSymbol)) == keccak256(bytes(toToken.tokenAssetSymbol))) {
            return "crossChainTransfer";
        } else {
            return "crossChainSwap";
        }
    }
}
