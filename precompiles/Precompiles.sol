// SPDX-License-Identifier: BUSL-1.1
// solhint-disable max-line-length,no-inline-assembly,reason-string
pragma solidity >=0.8.22;

import { ISablierFlow } from "./../src/interfaces/ISablierFlow.sol";

/// @notice This is useful for external integrations seeking to test against the exact deployed bytecode, as recompiling
/// with via IR enabled would be time-consuming.
///
/// The BUSL-1.1 license permits non-production usage of this file. This prohibits running the code on mainnet,
/// but allows for execution in test environments, such as a local development network or a testnet.
contract Precompiles {
    bytes public constant BYTECODE_FLOW =
        hex"60a034620002fb576001600160401b03906040908082018381118282101762000219578252601081526020926f14d8589b1a595c88119b1bddc813919560821b84830152825193838501858110838211176200021957845260088552675341422d464c4f5760c01b818601523060805282519082821162000219575f54916001948584811c94168015620002f0575b83851014620001fa578190601f948581116200029d575b50839085831160011462000239575f926200022d575b50505f19600383901b1c191690851b175f555b8551928311620002195783548481811c911680156200020e575b82821014620001fa57828111620001b2575b50809183116001146200014d5750819293945f9262000141575b50505f19600383901b1c191690821b1781555b6006555161392790816200030082396080518161260e0152f35b015190505f8062000114565b90601f19831695845f52825f20925f905b8882106200019a575050838596971062000181575b505050811b01815562000127565b01515f1960f88460031b161c191690555f808062000173565b8087859682949686015181550195019301906200015e565b845f52815f208380860160051c820192848710620001f0575b0160051c019085905b828110620001e4575050620000fa565b5f8155018590620001d4565b92508192620001cb565b634e487b7160e01b5f52602260045260245ffd5b90607f1690620000e8565b634e487b7160e01b5f52604160045260245ffd5b015190505f80620000bb565b90879350601f198316915f8052855f20925f5b878282106200028657505084116200026d575b505050811b015f55620000ce565b01515f1960f88460031b161c191690555f80806200025f565b8385015186558b979095019493840193016200024c565b9091505f8052835f208580850160051c820192868610620002e6575b918991869594930160051c01915b828110620002d7575050620000a5565b5f8155859450899101620002c7565b92508192620002b9565b93607f16936200008e565b5f80fdfe60e080604052600480361015610013575f80fd5b5f3560e01c91826301ffc9a714611c7357508163027b674414611c5157816306fdde0314611b92578163081812fc14611b75578163095ea7b314611a655781630adbd708146119b5578163136439dd146117795781631400ecec146117375781631e010439146116df5781631e99d569146116c25781631f0cce58146115ea57816323b872dd146115d3578163295d7fa414611580578163387930ed1461154657816342842e0e1461151f5781634869e12d146114c3578163597150fa1461147b5781636352211e1461144d5781636d0cee75146113fe57816370a082311461138e57816380448da31461134557816381632a861461115d578163837d490d146110ac578163894e9a0d14610ef957816394ecac9314610eb657816395d89b4114610d745781639e9e2e1314610d06578163a22cb46514610c2f578163a8a482a61461097d578163b88d4fde146108f4578163b8a3be66146108c1578163b971302a1461086f578163bdf2a43c1461081e578163c7e94922146107c1578163c87b56dd1461076d578163c9288019146106aa578163d074065014610667578163d4b80884146105d5578163d975dfed14610579578163e985e9c514610526578163ea5ead1914610480578163eac8f5b81461042e578163ebb6f79a1461035d578163f6252ff214610302578163f6de236014610284575063fbf2777e14610218575f80fd5b346102805760c0600319360112610280576020610233611d9d565b610278610271610241611db3565b610249611dfc565b610251611e6f565b9061025a611e85565b92610263611e1b565b9661026c612604565b612bf1565b9182612ac7565b604051908152f35b5f80fd5b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156102d357505f526007602052602060ff600260405f20015460a01c16604051908152f35b602491604051917fe21c1431000000000000000000000000000000000000000000000000000000008352820152fd5b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156102d357505f52600760205260206fffffffffffffffffffffffffffffffff600360405f20015416604051908152f35b34610280576040600319360112610280578035610378611ddd565b91610381612604565b815f52600760205260ff600160405f20015460c81c16156102d357815f5260076020526001600160a01b03600160405f2001541633036103f2577ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce76020836103e9868261296c565b604051908152a1005b604080517fa9ad2a2200000000000000000000000000000000000000000000000000000000815291820192835233602084015290918291010390fd5b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156102d357505f52600760205260206001600160a01b03600260405f20015416604051908152f35b346102805760406003193601126102805780359061049c611db3565b906104a5612604565b825f52600760205260ff600160405f20015460c81c16156104f6577ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce76020846103e94264ffffffffff168683612660565b60249083604051917fe21c1431000000000000000000000000000000000000000000000000000000008352820152fd5b346102805760406003193601126102805761053f611d9d565b610547611db3565b906001600160a01b038091165f52600560205260405f2091165f52602052602060ff60405f2054166040519015158152f35b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156102d35760206105bb4264ffffffffff1684613272565b6fffffffffffffffffffffffffffffffff60405191168152f35b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156102d357815f52600760205260ff600160405f20015460d01c16610638576020610629836124f9565b64ffffffffff60405191168152f35b602491604051917f167274c9000000000000000000000000000000000000000000000000000000008352820152fd5b34610280576040600319360112610280578035610682611dc9565b91815f52600760205260ff600160405f20015460c81c16156102d35760206105bb848461293a565b34610280576080600319360112610280578035906106c6611ddd565b9060407fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffbc360112610280576106f9612604565b825f52600760205260ff600160405f20015460c81c16156104f657506040519161072283611ede565b6044356001600160a01b038116810361028057836020936103e9927ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce796526064358583015283613183565b346102805760206003193601126102805761078890356125b2565b505f60405161079681611efa565b526107bd6040516107a681611efa565b5f8152604051918291602083526020830190611d41565b0390f35b346102805760406003193601126102805780356107dc611dc9565b91815f52600760205260ff600160405f20015460c81c16156102d357815f52600760205260ff600160405f20015460d01c166106385760206105bb8484612bad565b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156102d357505f526007602052602060ff600160405f20015460d01c166040519015158152f35b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156102d357505f52600760205260206001600160a01b03600160405f20015416604051908152f35b3461028057602060031936011261028057355f526007602052602060ff600160405f20015460c81c166040519015158152f35b346102805760806003193601126102805761090d611d9d565b610915611db3565b906064359267ffffffffffffffff84116102805736602385011215610280578301359161094183611f57565b9261094f6040519485611f16565b8084523660248287010111610280576020815f92602461097b9801838801378501015260443591612360565b005b34610280576040600319360112610280578035610998611ddd565b906109a1612604565b805f5260079260209284845260ff600160405f20015460c81c1615610bff57825f5284845260ff600160405f20015460d01c16610bcf57825f528484526001600160a01b03600160405f200154163303610b92576fffffffffffffffffffffffffffffffff90818116958615610b6957845f5280865260405f205460801c93848814610b3957507ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce79685947f3c92c3a56d04d4a7bc02d85874ad093d97053f2b046ef83860ecd0df273079b994610b1f60609585610ad58a8d98610a8d64ffffffffff42168093612bad565b998d5f5252600360405f200180547fffffffffffffffffffffffffffffffff0000000000000000000000000000000088610ac98d828516612283565b1691161790558b6133a1565b895f528b5260405f20906fffffffffffffffffffffffffffffffff7fffffffffffffffffffffffffffffffff0000000000000000000000000000000083549260801b169116179055565b60405193168352878301526040820152a2604051908152a1005b60249088604051917f89479407000000000000000000000000000000000000000000000000000000008352820152fd5b836040517f6fa3daaa000000000000000000000000000000000000000000000000000000008152fd5b50604080517fa9ad2a2200000000000000000000000000000000000000000000000000000000815291820192835233602084015290918291010390fd5b50602491604051917f167274c9000000000000000000000000000000000000000000000000000000008352820152fd5b50602491604051917fe21c1431000000000000000000000000000000000000000000000000000000008352820152fd5b3461028057604060031936011261028057610c48611d9d565b60243590811515809203610280576001600160a01b0316918215610cd65750335f52600560205260405f20825f5260205260405f207fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0081541660ff83161790556040519081527f17307eab39ab6107e8899845ad3d59bd9653f200f220920489ca2b5937696c3160203392a3005b60249083604051917f5b08ba18000000000000000000000000000000000000000000000000000000008352820152fd5b3461028057604060031936011261028057803590610d22611ddd565b90610d2b612604565b825f52600760205260ff600160405f20015460c81c16156104f6577ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce76020846103e98582612ac7565b34610280575f60031936011261028057604051905f600190600154918260011c92600181168015610eac575b6020958686108214610e8057508487528693929186908215610e42575050600114610de7575b50610dd392500383611f16565b6107bd604051928284938452830190611d41565b84915060015f527fb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6905f915b858310610e2a575050610dd3935082010185610dc6565b80548389018501528794508693909201918101610e13565b7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff001685820152610dd395151560051b8501019250879150610dc69050565b6022907f4e487b71000000000000000000000000000000000000000000000000000000005f525260245ffd5b93607f1693610da0565b34610280576040600319360112610280578035610ed1611dc9565b91815f52600760205260ff600160405f20015460c81c16156102d35760206105bb8484613272565b34610280576020600319360112610280578035905f610120604051610f1d81611e94565b8281528260208201528260408201528260608201528260808201528260a08201528260c08201528260e0820152826101008201520152815f52600760205260ff600160405f20015460c81c16156102d357505f52600760205261014060405f206fffffffffffffffffffffffffffffffff610120604051610f9d81611e94565b82600385549582871684528660801c602085015260ff60018201546001600160a01b038116604087015264ffffffffff8160a01c166060870152818160c81c1615156080870152818160d01c16151560a087015260d81c16151560c085015260ff60028201546001600160a01b03811660e087015260a01c166101008501520154168282015282604051941684528260208201511660208501526001600160a01b03604082015116604085015264ffffffffff606082015116606085015260808101511515608085015260a0810151151560a085015260c0810151151560c08501526001600160a01b0360e08201511660e085015260ff61010082015116610100850152015116610120820152f35b3461028057610100600319360112610280576110c6611d9d565b6110ce611db3565b906110d7611dfc565b6110df611e6f565b6110e7611e85565b916110f0611e1b565b9460407fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff3c360112610280576111279461026c612604565b60405161113381611ede565b60c435906001600160a01b03821682036102805760209361027892825260e4358583015283613183565b34610280576040600319360112610280578035611178611ddd565b90611181612604565b805f52600760205260ff600160405f20015460c81c161561131557805f5260076020526001600160a01b0380600160405f2001541633036112d9576fffffffffffffffffffffffffffffffff938484169485156112b0576111e964ffffffffff42168561293a565b908116861161125857505060207f733965256c58253b97a93bf37795e5a3f94310a671e38cc9311399b5305b151e91611222858561331e565b835f526007825261123e81600160405f200154169586866133fe565b835f5260078252600260405f2001541694604051908152a4005b604080517fc32e66f20000000000000000000000000000000000000000000000000000000081529283019485526fffffffffffffffffffffffffffffffff808716602087015290911690840152918291506060010390fd5b506040517fe4002dbc000000000000000000000000000000000000000000000000000000008152fd5b604080517fa9ad2a2200000000000000000000000000000000000000000000000000000000815280860184815233602082015290918291010390fd5b82602491604051917fe21c1431000000000000000000000000000000000000000000000000000000008352820152fd5b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156102d357505f526007602052602060405f205460801c604051908152f35b34610280576020600319360112610280576001600160a01b036113af611d9d565b169081156113ce57505f526003602052602060405f2054604051908152f35b6024905f604051917f89c62b64000000000000000000000000000000000000000000000000000000008352820152fd5b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156102d357505f52600260205260206001600160a01b0360405f205416604051908152f35b346102805760206003193601126102805761146a602091356125b2565b6001600160a01b0360405191168152f35b346102805760a0600319360112610280576020610278611499611d9d565b6114a1611db3565b6114a9611dfc565b6114b1611e6f565b916114ba611e85565b9361026c612604565b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156102d357815f52600760205260ff600160405f20015460d01c166106385760206105bb4264ffffffffff1684612bad565b346102805761097b61153036611e3a565b906040519261153e84611efa565b5f8452612360565b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156102d35760206105bb836122f6565b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156102d357505f526007602052602064ffffffffff600160405f20015460a01c16604051908152f35b346102805761097b6115e436611e3a565b91611fb3565b34610280576060600319360112610280578035611605611ddd565b61160d611dfc565b92611616612604565b825f52600760205260ff600160405f20015460c81c16156104f657825f5260076020526001600160a01b03600160405f200154163303611688577ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce76020846103e987611682878461296c565b82612ac7565b604080517fa9ad2a220000000000000000000000000000000000000000000000000000000081529182018481523360208201528291010390fd5b34610280575f600319360112610280576020600654604051908152f35b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156102d357505f52600760205260206fffffffffffffffffffffffffffffffff60405f205416604051908152f35b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156102d35760206105bb4264ffffffffff168461293a565b3461028057602080600319360112610280578135611795612604565b805f52600780835260ff600160405f20015460c81c161561198557815f5280835260ff600160405f20015460d01c1661195557815f528083526001600160a01b039081600160405f200154163303611919577ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7945061181b64ffffffffff421684612bad565b835f528185527fab276ee47d02553c8e0ee99a06248bf51f0b69cd5a23e829cc0a30dd9f39a6ed60406003815f2001948554956fffffffffffffffffffffffffffffffff967fffffffffffffffffffffffffffffffff000000000000000000000000000000008861188e88828516612283565b169116179055865f528488526001825f20878154168155018054907a0100000000000000000000000000000000000000000000000000007fffffffffff00ffffffffffffffffffffffffffffffffffffffffffffffffffff83161790556002895281835f205416958952816002845f200154169683519589875216898601521692a4604051908152a1005b604080517fa9ad2a2200000000000000000000000000000000000000000000000000000000815280870185815233602082015290918291010390fd5b60248483604051917f167274c9000000000000000000000000000000000000000000000000000000008352820152fd5b60248483604051917fe21c1431000000000000000000000000000000000000000000000000000000008352820152fd5b34610280576060600319360112610280578035906119d1611db3565b6044359164ffffffffff83168303610280576119eb612604565b835f52600760205260ff600160405f20015460c81c1615611a35577ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce76020856103e9868683612660565b60249084604051917fe21c1431000000000000000000000000000000000000000000000000000000008352820152fd5b3461028057604060031936011261028057611a7e611d9d565b90602435611a8b816125b2565b33151580611b62575b80611b38575b611b085781906001600160a01b03809516948591167f8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b9255f80a45f5260205260405f20907fffffffffffffffffffffffff00000000000000000000000000000000000000008254161790555f80f35b6040517fa9fbf51f0000000000000000000000000000000000000000000000000000000081523381850152602490fd5b506001600160a01b0381165f52600560205260405f20335f5260205260ff60405f20541615611a9a565b50336001600160a01b0382161415611a94565b346102805760206003193601126102805761146a60209135611f91565b34610280575f60031936011261028057604051905f80549060018260011c92600181168015611c47575b6020958686108214610e8057508487528693929186908215610e42575050600114611bee5750610dd392500383611f16565b5f808052859250907f290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5635b858310611c2f575050610dd3935082010185610dc6565b80548389018501528794508693909201918101611c18565b93607f1693611bbc565b34610280575f60031936011261028057602060405167016345785d8a00008152f35b90346102805760206003193601126102805735907fffffffff00000000000000000000000000000000000000000000000000000000821680920361028057817f80ac58cd0000000000000000000000000000000000000000000000000000000060209314908115611d17575b8115611ced575b5015158152f35b7f01ffc9a70000000000000000000000000000000000000000000000000000000091501483611ce6565b7f5b5e139f0000000000000000000000000000000000000000000000000000000081149150611cdf565b91908251928382525f5b848110611d895750507fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0601f845f6020809697860101520116010190565b602081830181015184830182015201611d4b565b600435906001600160a01b038216820361028057565b602435906001600160a01b038216820361028057565b6024359064ffffffffff8216820361028057565b602435906fffffffffffffffffffffffffffffffff8216820361028057565b604435906fffffffffffffffffffffffffffffffff8216820361028057565b60a435906fffffffffffffffffffffffffffffffff8216820361028057565b6003196060910112610280576001600160a01b0390600435828116810361028057916024359081168103610280579060443590565b606435906001600160a01b038216820361028057565b60843590811515820361028057565b610140810190811067ffffffffffffffff821117611eb157604052565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52604160045260245ffd5b6040810190811067ffffffffffffffff821117611eb157604052565b6020810190811067ffffffffffffffff821117611eb157604052565b90601f7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0910116810190811067ffffffffffffffff821117611eb157604052565b67ffffffffffffffff8111611eb157601f017fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe01660200190565b611f9a816125b2565b505f5260046020526001600160a01b0360405f20541690565b916001600160a01b0380921691821561225357815f526020936002855260409482865f20541615158061223b575b61220b57835f526002815282865f205416943315158061214b575b50907ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce791866120df575b805f5260038252875f2060018154019055855f5260028252875f20817fffffffffffffffffffffffff000000000000000000000000000000000000000082541617905585885191887fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef5f80a4858152a116928383036120a55750505050565b6064945051927f64283d7b000000000000000000000000000000000000000000000000000000008452600484015260248301526044820152fd5b612116865f52600460205260405f207fffffffffffffffffffffffff00000000000000000000000000000000000000008154169055565b865f5260038252875f207fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8154019055612026565b806121ca575b1561215c575f611ffc565b8685876121925760249151907f7e2732890000000000000000000000000000000000000000000000000000000082526004820152fd5b90517f177e802f0000000000000000000000000000000000000000000000000000000081523360048201526024810191909152604490fd5b5033861480156121ef575b806121515750845f52600482523384885f20541614612151565b50855f5260058252865f20335f52825260ff875f2054166121d5565b6024848751907fff6a8c100000000000000000000000000000000000000000000000000000000082526004820152fd5b506007815260ff6001875f20015460d81c1615611fe1565b60246040517f64a0ae920000000000000000000000000000000000000000000000000000000081525f6004820152fd5b9190916fffffffffffffffffffffffffffffffff808094169116019182116122a757565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52601160045260245ffd5b6fffffffffffffffffffffffffffffffff91821690821603919082116122a757565b805f5260076020526fffffffffffffffffffffffffffffffff906123448260405f2054169161232c64ffffffffff421682612bad565b905f52600760205283600360405f2001541690612283565b91821681101561235a57612357916122d4565b90565b50505f90565b9192909261236f818585611fb3565b833b61237c575b50505050565b6020906001600160a01b03809516946123dd60405194859384937f150b7a0200000000000000000000000000000000000000000000000000000000988986523360048701521660248501526044840152608060648401526084830190611d41565b03815f875af15f918161249c575b5061243a57826123f96132ef565b805191908261243357602482604051907f64a0ae920000000000000000000000000000000000000000000000000000000082526004820152fd5b9050602001fd5b7fffffffff00000000000000000000000000000000000000000000000000000000160361246b57505f808080612376565b602490604051907f64a0ae920000000000000000000000000000000000000000000000000000000082526004820152fd5b9091506020813d6020116124f1575b816124b860209383611f16565b8101031261028057517fffffffff000000000000000000000000000000000000000000000000000000008116810361028057905f6123eb565b3d91506124ab565b805f52600760205260405f20906fffffffffffffffffffffffffffffffff90818354169283156125aa57600383910154169261254764ffffffffff9461254186421685612bad565b90612283565b918184841610156125a1575f52600760205260405f205460801c9182156125745783910316041642011690565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52601260045260245ffd5b50505050505f90565b505050505f90565b805f5260026020526001600160a01b0360405f2054169081156125d3575090565b602490604051907f7e2732890000000000000000000000000000000000000000000000000000000082526004820152fd5b6001600160a01b037f000000000000000000000000000000000000000000000000000000000000000016300361263657565b60046040517fa1c0d6e5000000000000000000000000000000000000000000000000000000008152fd5b6001600160a01b0380831692831561291057825f526020916002835260409581875f2054168087141590816128c5575b5061288957845f526007845264ffffffffff806001895f20015460a01c16908083169180831061285357504216811161281d5750845f5260078452865f20926fffffffffffffffffffffffffffffffff80806003870154169554161580612815575b6127e55791612795917fea38d1d1aff61e6b0cba6cd61ef2c29eaf1231f67274a8415d068972793cbca59695949361273e61272d848b613272565b93612738858c61331e565b8a6133a1565b8083168096115f146127ac57885f526007875260038b5f2001907fffffffffffffffffffffffffffffffff00000000000000000000000000000000825491612788868285166122d4565b1691161790555b876133fe565b845f52600783526002875f200154169551908152a4565b50875f526007865260038a5f20017fffffffffffffffffffffffffffffffff00000000000000000000000000000000815416905561278f565b6024878a51907fd26fdefe0000000000000000000000000000000000000000000000000000000082526004820152fd5b5084156126f2565b6044908851907f3da502cd0000000000000000000000000000000000000000000000000000000082526004820152426024820152fd5b604490838b51917fc311eb2200000000000000000000000000000000000000000000000000000000835260048301526024820152fd5b606485878951917f4208ab4c00000000000000000000000000000000000000000000000000000000835260048301523360248301526044820152fd5b338114915081156128f3575b5080156128e0575b155f612690565b5033826128ec87611f91565b16146128d9565b90505f5260058452865f20335f52845260ff875f2054165f6128d1565b60046040517f44511d3c000000000000000000000000000000000000000000000000000000008152fd5b61296661235792825f5260076020526fffffffffffffffffffffffffffffffff60405f20541692613272565b906122d4565b90815f52600760205260ff600160405f20015460d01c1615612a96576fffffffffffffffffffffffffffffffff8116908115612a6c5760026001600160a01b03916129be64ffffffffff4216866133a1565b845f526007602052612a1060405f209182906fffffffffffffffffffffffffffffffff7fffffffffffffffffffffffffffffffff0000000000000000000000000000000083549260801b169116179055565b600181017fffffffffff00ffffffffffffffffffffffffffffffffffffffffffffffffffff8154169055015416916040519182527fb86b09c78e5ae6a5db95b57ae4e84fdcfdea9580267b408a7a9735131c33849c60203393a4565b60046040517f6fa3daaa000000000000000000000000000000000000000000000000000000008152fd5b602482604051907fdc6fbbbc0000000000000000000000000000000000000000000000000000000082526004820152fd5b6fffffffffffffffffffffffffffffffff90818316918215612b8357612b5590825f52600760205260405f2080547fffffffffffffffffffffffffffffffff0000000000000000000000000000000083612b2389828516612283565b169116179055825f526007602052612b4c6001600160a01b03600260405f200154169584613513565b163033866135e1565b6040519182527f7b8a3e3a6e4e899000a8aa2f895cc0a348d2b9ce64b091f1b25b25d8fe65354e60203393a4565b60046040517f2da41ea3000000000000000000000000000000000000000000000000000000008152fd5b5f52600760205260405f209064ffffffffff80600184015460a01c168082841611156125aa576fffffffffffffffffffffffffffffffff935460801c920316021690565b92919493946080526001600160a01b03831615613159576fffffffffffffffffffffffffffffffff6080511615612a6c5760ff612c366001600160a01b038416613650565b1690811561311f57600654809664ffffffffff938560405191612c5883611e94565b5f835260208301936080516fffffffffffffffffffffffffffffffff16855260408401906001600160a01b038b1682526060850190894216825260808601600181528a60a08801935f855260c08901931515845260e08901976001600160a01b03168852610100890196875261012089019a5f8c525f52600760205260405f2098516fffffffffffffffffffffffffffffffff16997fffffffffffffffffffffffffffffffff000000000000000000000000000000009a8b8b5416178a55516fffffffffffffffffffffffffffffffff16612d6f908a906fffffffffffffffffffffffffffffffff7fffffffffffffffffffffffffffffffff0000000000000000000000000000000083549260801b169116179055565b94516001600160a01b031660c08190527fffffffffffffffffffffffff000000000000000000000000000000000000000060a090815260018a01805497517fffffffffffffff000000000000000000000000000000000000000000000000009098169092179290961690951b78ffffffffff0000000000000000000000000000000000000000161784555115159183549051151560d01b7aff0000000000000000000000000000000000000000000000000000169151151560d81b7bff000000000000000000000000000000000000000000000000000000169260c81b79ff0000000000000000000000000000000000000000000000000016907fffffffff000000ffffffffffffffffffffffffffffffffffffffffffffffffff1617171790556002830191516001600160a01b03168254915160a01b74ff000000000000000000000000000000000000000016917fffffffffffffffffffffff000000000000000000000000000000000000000000161717905560030191516fffffffffffffffffffffffffffffffff1690825416179055600186016006556001600160a01b031692831561225357855f5260026020526001600160a01b0360405f205416151580613105575b6130d457855f5260026020526001600160a01b0360405f2054167ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce760208215159283613067575b875f526003825260405f2060018154019055895f526002825260405f208860a0518254161790558988604051927fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef5f80a4898152a1613037576001600160a01b036080917f0f2b5c58ebf7a52a36df19f1671fe4b0013ad28137071386d4989e721edfd1719382604051968a88526fffffffffffffffffffffffffffffffff8651166020890152166040870152421660608601521692a3565b60246040517f73c6ac6e0000000000000000000000000000000000000000000000000000000081525f6004820152fd5b61309e8a5f52600460205260405f207fffffffffffffffffffffffff00000000000000000000000000000000000000008154169055565b805f526003825260405f207fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8154019055612f7e565b602486604051907fff6a8c100000000000000000000000000000000000000000000000000000000082526004820152fd5b50600760205260ff600160405f20015460d81c1615612f37565b6024836001600160a01b03604051917f696f6577000000000000000000000000000000000000000000000000000000008352166004820152fd5b60046040517ff9bb0fb3000000000000000000000000000000000000000000000000000000008152fd5b919060208201805167016345785d8a0000908181116132355750506001600160a01b03808451161561320b57613209946131eb6116826131da946fffffffffffffffffffffffffffffffff958691518289166137ba565b166131e58185613513565b966122d4565b5f52600760205280600260405f2001541693511691169133906135e1565b565b60046040517f5f946a02000000000000000000000000000000000000000000000000000000008152fd5b6064918691604051927f37b1ada4000000000000000000000000000000000000000000000000000000008452600484015260248301526044820152fd5b90815f52600760205260405f206fffffffffffffffffffffffffffffffff91828254169384156125a15783600384015416928584116132e7576001015460d01c60ff166132df57916132c86132cd928694612bad565b612283565b91821611156132da575090565b905090565b505091505090565b505050505090565b3d15613319573d9061330082611f57565b9161330e6040519384611f16565b82523d5f602084013e565b606090565b805f5260076020526fffffffffffffffffffffffffffffffff918260405f205416809382161161334d57505050565b6040517fcb5f605f00000000000000000000000000000000000000000000000000000000815260048101929092526fffffffffffffffffffffffffffffffff92831660248301529091166044820152606490fd5b90613209915f526007602052600160405f2001907fffffffffffffff0000000000ffffffffffffffffffffffffffffffffffffffff78ffffffffff000000000000000000000000000000000000000083549260a01b169116179055565b906134fd61320993613462936134148282613513565b91815f52600760205260405f20907fffffffffffffffffffffffffffffffff000000000000000000000000000000008254916fffffffffffffffffffffffffffffffff9889918285166122d4565b1691161790555f5260076020526134d16001600160a01b03600260405f20015416936040519586937fa9059cbb000000000000000000000000000000000000000000000000000000006020860152169060248401602090939291936001600160a01b0360408201951681520152565b037fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe08101845283611f16565b613726565b60ff16604d81116122a757600a0a90565b5f52600760205260ff600260405f20015460a01c16601281146135dd57601281119081156135cc577fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffee0160ff81116122a757905b156135a1576135866fffffffffffffffffffffffffffffffff91613502565b91168181029181830414901517156122a757612357906136d1565b6135aa90613502565b8015612574576fffffffffffffffffffffffffffffffff6123579216046136d1565b60120360ff81116122a75790613567565b5090565b9290604051927f23b872dd0000000000000000000000000000000000000000000000000000000060208501526001600160a01b03809216602485015216604483015260648201526064815260a081019181831067ffffffffffffffff841117611eb15761320992604052613726565b5f809160405160208101907f313ce5670000000000000000000000000000000000000000000000000000000082526004815261368b81611ede565b51915afa6136976132ef565b90806136c6575b156136c157602081805181010312610280576020015160ff811681036102805790565b505f90565b50602081511461369e565b6fffffffffffffffffffffffffffffffff908181116136ee571690565b604490604051907f6dfcc650000000000000000000000000000000000000000000000000000000008252608060048301526024820152fd5b5f806001600160a01b0361374f93169360208151910182865af16137486132ef565b9083613887565b8051908115159182613796575b50506137655750565b602490604051907f5274afe70000000000000000000000000000000000000000000000000000000082526004820152fd5b81925090602091810103126102805760200151801590811503610280575f8061375c565b9190917fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8382098382029182808310920391808303921461387657670de0b6b3a7640000908183101561383f57947faccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac1066994950990828211900360ee1b910360121c170290565b60449086604051917f5173648d00000000000000000000000000000000000000000000000000000000835260048301526024820152fd5b5050670de0b6b3a764000090049150565b906138c6575080511561389c57805190602001fd5b60046040517f1425ea42000000000000000000000000000000000000000000000000000000008152fd5b81511580613911575b6138d7575090565b6024906001600160a01b03604051917f9996b315000000000000000000000000000000000000000000000000000000008352166004820152fd5b50803b156138cf56fea164736f6c6343000817000a";

    function deploySablierFlow() public returns (ISablierFlow flow) {
        bytes memory bytecode = BYTECODE_FLOW;
        assembly {
            flow := create(0, add(bytecode, 0x20), mload(bytecode))
        }
        require(address(flow) != address(0), "Sablier Precompiles: deployment failed for Flow contract");
    }
}
