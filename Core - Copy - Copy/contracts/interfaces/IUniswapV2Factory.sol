pragma solidity >=0.8.0;

interface IUniswapV2Factory {
    event PairCreated(address indexed token0, address indexed token1, address pair, uint);

    function feeTo() external view virtual returns (address);
    function feeToSetter() external view virtual returns (address);

    function getPair(address tokenA, address tokenB) external view virtual returns (address pair);
    function allPairs(uint) external view virtual returns (address pair);
    function allPairsLength() external view virtual returns (uint);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeTo(address) external;
    function setFeeToSetter(address) external;
}
