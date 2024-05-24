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
        hex"60a034620002fa576001600160401b03906040908082018381118282101762000218578252601081526020926f14d8589b1a595c88119b1bddc813919560821b84830152825193838501858110838211176200021857845260078552665341422d464c5760c81b818601523060805282519082821162000218575f54916001948584811c94168015620002ef575b83851014620001f9578190601f948581116200029c575b50839085831160011462000238575f926200022c575b50505f19600383901b1c191690851b175f555b8551928311620002185783548481811c911680156200020d575b82821014620001f957828111620001b1575b50809183116001146200014c5750819293945f9262000140575b50505f19600383901b1c191690821b1781555b600655516139279081620002ff82396080518161260e0152f35b015190505f8062000113565b90601f19831695845f52825f20925f905b88821062000199575050838596971062000180575b505050811b01815562000126565b01515f1960f88460031b161c191690555f808062000172565b8087859682949686015181550195019301906200015d565b845f52815f208380860160051c820192848710620001ef575b0160051c019085905b828110620001e3575050620000f9565b5f8155018590620001d3565b92508192620001ca565b634e487b7160e01b5f52602260045260245ffd5b90607f1690620000e7565b634e487b7160e01b5f52604160045260245ffd5b015190505f80620000ba565b90879350601f198316915f8052855f20925f5b878282106200028557505084116200026c575b505050811b015f55620000cd565b01515f1960f88460031b161c191690555f80806200025e565b8385015186558b979095019493840193016200024b565b9091505f8052835f208580850160051c820192868610620002e5575b918991869594930160051c01915b828110620002d6575050620000a4565b5f8155859450899101620002c6565b92508192620002b8565b93607f16936200008d565b5f80fdfe60e080604052600480361015610013575f80fd5b5f3560e01c91826301ffc9a714611c7357508163027b674414611c5157816306fdde0314611b92578163081812fc14611b75578163095ea7b314611a655781630adbd708146119b5578163136439dd146117795781631400ecec146117375781631e010439146116df5781631e99d569146116c257816323b872dd146116ab578163295d7fa414611658578163387930ed1461161e57816342842e0e146115f75781634869e12d1461159b578163597150fa146115535781636352211e146115255781636d0cee75146114d657816370a082311461146657816380448da31461141d578163837d490d1461136c5781638518c08214611294578163894e9a0d146110e157816394ecac931461109e57816395d89b4114610f5c5781639e9e2e1314610eee578163a22cb46514610e17578163a8a482a614610b65578163b88d4fde14610adc578163b8a3be6614610aa9578163b971302a14610a57578163bdf2a43c14610a06578163c7e94922146109a9578163c87b56dd14610955578163c928801914610892578163d07406501461084f578163d4b80884146107bd578163d5e4602f146106f5578163d975dfed14610699578163e985e9c514610646578163ea5ead1914610597578163eac8f5b814610545578163f6252ff2146104ea578163f6de23601461046c578163fa0e3c9414610284575063fbf2777e14610218575f80fd5b346102805760c0600319360112610280576020610233611d9d565b610278610271610241611db3565b610249611e12565b610251611e6f565b9061025a611e85565b92610263611e31565b9661026c612604565b6129b0565b918261318c565b604051908152f35b5f80fd5b3461028057604060031936011261028057803561029f611e50565b906102a8612604565b805f52600760205260ff600160405f20015460c81c161561043c57805f5260076020526001600160a01b0380600160405f200154163303610400576fffffffffffffffffffffffffffffffff938484169485156103d75761031064ffffffffff42168561293a565b908116861161037f57505060207f733965256c58253b97a93bf37795e5a3f94310a671e38cc9311399b5305b151e91610349858561331e565b835f526007825261036581600160405f200154169586866133fe565b835f5260078252600260405f2001541694604051908152a4005b604080517fc32e66f20000000000000000000000000000000000000000000000000000000081529283019485526fffffffffffffffffffffffffffffffff808716602087015290911690840152918291506060010390fd5b506040517fe4002dbc000000000000000000000000000000000000000000000000000000008152fd5b604080517fa9ad2a2200000000000000000000000000000000000000000000000000000000815280860184815233602082015290918291010390fd5b82602491604051917fe21c1431000000000000000000000000000000000000000000000000000000008352820152fd5b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156104bb57505f526007602052602060ff600260405f20015460a01c16604051908152f35b602491604051917fe21c1431000000000000000000000000000000000000000000000000000000008352820152fd5b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156104bb57505f52600760205260206fffffffffffffffffffffffffffffffff600360405f20015416604051908152f35b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156104bb57505f52600760205260206001600160a01b03600260405f20015416604051908152f35b34610280576040600319360112610280578035906105b3611db3565b906105bc612604565b825f52600760205260ff600160405f20015460c81c1615610616577ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce760208461060d4264ffffffffff168683612660565b604051908152a1005b60249083604051917fe21c1431000000000000000000000000000000000000000000000000000000008352820152fd5b346102805760406003193601126102805761065f611d9d565b610667611db3565b906001600160a01b038091165f52600560205260405f2091165f52602052602060ff60405f2054166040519015158152f35b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156104bb5760206106db4264ffffffffff1684613272565b6fffffffffffffffffffffffffffffffff60405191168152f35b34610280576040600319360112610280578035610710611e50565b91610719612604565b815f52600760205260ff600160405f20015460c81c16156104bb57815f5260076020526001600160a01b03600160405f200154163303610781577ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce760208361060d868261305b565b604080517fa9ad2a2200000000000000000000000000000000000000000000000000000000815291820192835233602084015290918291010390fd5b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156104bb57815f52600760205260ff600160405f20015460d01c16610820576020610811836124f9565b64ffffffffff60405191168152f35b602491604051917f167274c9000000000000000000000000000000000000000000000000000000008352820152fd5b3461028057604060031936011261028057803561086a611dc9565b91815f52600760205260ff600160405f20015460c81c16156104bb5760206106db848461293a565b34610280576080600319360112610280578035906108ae611e50565b9060407fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffbc360112610280576108e1612604565b825f52600760205260ff600160405f20015460c81c161561061657506040519161090a83611ede565b6044356001600160a01b0381168103610280578360209361060d927ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce796526064358583015283612f6c565b346102805760206003193601126102805761097090356125b2565b505f60405161097e81611efa565b526109a560405161098e81611efa565b5f8152604051918291602083526020830190611d41565b0390f35b346102805760406003193601126102805780356109c4611dc9565b91815f52600760205260ff600160405f20015460c81c16156104bb57815f52600760205260ff600160405f20015460d01c166108205760206106db848461296c565b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156104bb57505f526007602052602060ff600160405f20015460d01c166040519015158152f35b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156104bb57505f52600760205260206001600160a01b03600160405f20015416604051908152f35b3461028057602060031936011261028057355f526007602052602060ff600160405f20015460c81c166040519015158152f35b3461028057608060031936011261028057610af5611d9d565b610afd611db3565b906064359267ffffffffffffffff841161028057366023850112156102805783013591610b2983611f57565b92610b376040519485611f16565b8084523660248287010111610280576020815f926024610b639801838801378501015260443591612360565b005b34610280576040600319360112610280578035610b80611e50565b90610b89612604565b805f5260079260209284845260ff600160405f20015460c81c1615610de757825f5284845260ff600160405f20015460d01c16610db757825f528484526001600160a01b03600160405f200154163303610d7a576fffffffffffffffffffffffffffffffff90818116958615610d5157845f5280865260405f205460801c93848814610d2157507ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce79685947f3c92c3a56d04d4a7bc02d85874ad093d97053f2b046ef83860ecd0df273079b994610d0760609585610cbd8a8d98610c7564ffffffffff4216809361296c565b998d5f5252600360405f200180547fffffffffffffffffffffffffffffffff0000000000000000000000000000000088610cb18d828516612283565b1691161790558b6133a1565b895f528b5260405f20906fffffffffffffffffffffffffffffffff7fffffffffffffffffffffffffffffffff0000000000000000000000000000000083549260801b169116179055565b60405193168352878301526040820152a2604051908152a1005b60249088604051917f89479407000000000000000000000000000000000000000000000000000000008352820152fd5b836040517f6fa3daaa000000000000000000000000000000000000000000000000000000008152fd5b50604080517fa9ad2a2200000000000000000000000000000000000000000000000000000000815291820192835233602084015290918291010390fd5b50602491604051917f167274c9000000000000000000000000000000000000000000000000000000008352820152fd5b50602491604051917fe21c1431000000000000000000000000000000000000000000000000000000008352820152fd5b3461028057604060031936011261028057610e30611d9d565b60243590811515809203610280576001600160a01b0316918215610ebe5750335f52600560205260405f20825f5260205260405f207fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0081541660ff83161790556040519081527f17307eab39ab6107e8899845ad3d59bd9653f200f220920489ca2b5937696c3160203392a3005b60249083604051917f5b08ba18000000000000000000000000000000000000000000000000000000008352820152fd5b3461028057604060031936011261028057803590610f0a611e50565b90610f13612604565b825f52600760205260ff600160405f20015460c81c1615610616577ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce760208461060d858261318c565b34610280575f60031936011261028057604051905f600190600154918260011c92600181168015611094575b60209586861082146110685750848752869392918690821561102a575050600114610fcf575b50610fbb92500383611f16565b6109a5604051928284938452830190611d41565b84915060015f527fb10e2d527612073b26eecdfd717e6a320cf44b4afac2b0732d9fcbe2b7fa0cf6905f915b858310611012575050610fbb935082010185610fae565b80548389018501528794508693909201918101610ffb565b7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff001685820152610fbb95151560051b8501019250879150610fae9050565b6022907f4e487b71000000000000000000000000000000000000000000000000000000005f525260245ffd5b93607f1693610f88565b346102805760406003193601126102805780356110b9611dc9565b91815f52600760205260ff600160405f20015460c81c16156104bb5760206106db8484613272565b34610280576020600319360112610280578035905f61012060405161110581611e94565b8281528260208201528260408201528260608201528260808201528260a08201528260c08201528260e0820152826101008201520152815f52600760205260ff600160405f20015460c81c16156104bb57505f52600760205261014060405f206fffffffffffffffffffffffffffffffff61012060405161118581611e94565b82600385549582871684528660801c602085015260ff60018201546001600160a01b038116604087015264ffffffffff8160a01c166060870152818160c81c1615156080870152818160d01c16151560a087015260d81c16151560c085015260ff60028201546001600160a01b03811660e087015260a01c166101008501520154168282015282604051941684528260208201511660208501526001600160a01b03604082015116604085015264ffffffffff606082015116606085015260808101511515608085015260a0810151151560a085015260c0810151151560c08501526001600160a01b0360e08201511660e085015260ff61010082015116610100850152015116610120820152f35b346102805760606003193601126102805780356112af611e50565b6112b7611e12565b926112c0612604565b825f52600760205260ff600160405f20015460c81c161561061657825f5260076020526001600160a01b03600160405f200154163303611332577ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce760208461060d8761132c878461305b565b8261318c565b604080517fa9ad2a220000000000000000000000000000000000000000000000000000000081529182018481523360208201528291010390fd5b346102805761010060031936011261028057611386611d9d565b61138e611db3565b90611397611e12565b61139f611e6f565b6113a7611e85565b916113b0611e31565b9460407fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff3c360112610280576113e79461026c612604565b6040516113f381611ede565b60c435906001600160a01b03821682036102805760209361027892825260e4358583015283612f6c565b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156104bb57505f526007602052602060405f205460801c604051908152f35b34610280576020600319360112610280576001600160a01b03611487611d9d565b169081156114a657505f526003602052602060405f2054604051908152f35b6024905f604051917f89c62b64000000000000000000000000000000000000000000000000000000008352820152fd5b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156104bb57505f52600260205260206001600160a01b0360405f205416604051908152f35b3461028057602060031936011261028057611542602091356125b2565b6001600160a01b0360405191168152f35b346102805760a0600319360112610280576020610278611571611d9d565b611579611db3565b611581611e12565b611589611e6f565b91611592611e85565b9361026c612604565b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156104bb57815f52600760205260ff600160405f20015460d01c166108205760206106db4264ffffffffff168461296c565b3461028057610b6361160836611ddd565b906040519261161684611efa565b5f8452612360565b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156104bb5760206106db836122f6565b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156104bb57505f526007602052602064ffffffffff600160405f20015460a01c16604051908152f35b3461028057610b636116bc36611ddd565b91611fb3565b34610280575f600319360112610280576020600654604051908152f35b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156104bb57505f52600760205260206fffffffffffffffffffffffffffffffff60405f205416604051908152f35b3461028057602060031936011261028057803590815f52600760205260ff600160405f20015460c81c16156104bb5760206106db4264ffffffffff168461293a565b3461028057602080600319360112610280578135611795612604565b805f52600780835260ff600160405f20015460c81c161561198557815f5280835260ff600160405f20015460d01c1661195557815f528083526001600160a01b039081600160405f200154163303611919577ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce7945061181b64ffffffffff42168461296c565b835f528185527fab276ee47d02553c8e0ee99a06248bf51f0b69cd5a23e829cc0a30dd9f39a6ed60406003815f2001948554956fffffffffffffffffffffffffffffffff967fffffffffffffffffffffffffffffffff000000000000000000000000000000008861188e88828516612283565b169116179055865f528488526001825f20878154168155018054907a0100000000000000000000000000000000000000000000000000007fffffffffff00ffffffffffffffffffffffffffffffffffffffffffffffffffff83161790556002895281835f205416958952816002845f200154169683519589875216898601521692a4604051908152a1005b604080517fa9ad2a2200000000000000000000000000000000000000000000000000000000815280870185815233602082015290918291010390fd5b60248483604051917f167274c9000000000000000000000000000000000000000000000000000000008352820152fd5b60248483604051917fe21c1431000000000000000000000000000000000000000000000000000000008352820152fd5b34610280576060600319360112610280578035906119d1611db3565b6044359164ffffffffff83168303610280576119eb612604565b835f52600760205260ff600160405f20015460c81c1615611a35577ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce760208561060d868683612660565b60249084604051917fe21c1431000000000000000000000000000000000000000000000000000000008352820152fd5b3461028057604060031936011261028057611a7e611d9d565b90602435611a8b816125b2565b33151580611b62575b80611b38575b611b085781906001600160a01b03809516948591167f8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b9255f80a45f5260205260405f20907fffffffffffffffffffffffff00000000000000000000000000000000000000008254161790555f80f35b6040517fa9fbf51f0000000000000000000000000000000000000000000000000000000081523381850152602490fd5b506001600160a01b0381165f52600560205260405f20335f5260205260ff60405f20541615611a9a565b50336001600160a01b0382161415611a94565b346102805760206003193601126102805761154260209135611f91565b34610280575f60031936011261028057604051905f80549060018260011c92600181168015611c47575b60209586861082146110685750848752869392918690821561102a575050600114611bee5750610fbb92500383611f16565b5f808052859250907f290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e5635b858310611c2f575050610fbb935082010185610fae565b80548389018501528794508693909201918101611c18565b93607f1693611bbc565b34610280575f60031936011261028057602060405167016345785d8a00008152f35b90346102805760206003193601126102805735907fffffffff00000000000000000000000000000000000000000000000000000000821680920361028057817f80ac58cd0000000000000000000000000000000000000000000000000000000060209314908115611d17575b8115611ced575b5015158152f35b7f01ffc9a70000000000000000000000000000000000000000000000000000000091501483611ce6565b7f5b5e139f0000000000000000000000000000000000000000000000000000000081149150611cdf565b91908251928382525f5b848110611d895750507fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0601f845f6020809697860101520116010190565b602081830181015184830182015201611d4b565b600435906001600160a01b038216820361028057565b602435906001600160a01b038216820361028057565b6024359064ffffffffff8216820361028057565b6003196060910112610280576001600160a01b0390600435828116810361028057916024359081168103610280579060443590565b604435906fffffffffffffffffffffffffffffffff8216820361028057565b60a435906fffffffffffffffffffffffffffffffff8216820361028057565b602435906fffffffffffffffffffffffffffffffff8216820361028057565b606435906001600160a01b038216820361028057565b60843590811515820361028057565b610140810190811067ffffffffffffffff821117611eb157604052565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52604160045260245ffd5b6040810190811067ffffffffffffffff821117611eb157604052565b6020810190811067ffffffffffffffff821117611eb157604052565b90601f7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0910116810190811067ffffffffffffffff821117611eb157604052565b67ffffffffffffffff8111611eb157601f017fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe01660200190565b611f9a816125b2565b505f5260046020526001600160a01b0360405f20541690565b916001600160a01b0380921691821561225357815f526020936002855260409482865f20541615158061223b575b61220b57835f526002815282865f205416943315158061214b575b50907ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce791866120df575b805f5260038252875f2060018154019055855f5260028252875f20817fffffffffffffffffffffffff000000000000000000000000000000000000000082541617905585885191887fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef5f80a4858152a116928383036120a55750505050565b6064945051927f64283d7b000000000000000000000000000000000000000000000000000000008452600484015260248301526044820152fd5b612116865f52600460205260405f207fffffffffffffffffffffffff00000000000000000000000000000000000000008154169055565b865f5260038252875f207fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8154019055612026565b806121ca575b1561215c575f611ffc565b8685876121925760249151907f7e2732890000000000000000000000000000000000000000000000000000000082526004820152fd5b90517f177e802f0000000000000000000000000000000000000000000000000000000081523360048201526024810191909152604490fd5b5033861480156121ef575b806121515750845f52600482523384885f20541614612151565b50855f5260058252865f20335f52825260ff875f2054166121d5565b6024848751907fff6a8c100000000000000000000000000000000000000000000000000000000082526004820152fd5b506007815260ff6001875f20015460d81c1615611fe1565b60246040517f64a0ae920000000000000000000000000000000000000000000000000000000081525f6004820152fd5b9190916fffffffffffffffffffffffffffffffff808094169116019182116122a757565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52601160045260245ffd5b6fffffffffffffffffffffffffffffffff91821690821603919082116122a757565b805f5260076020526fffffffffffffffffffffffffffffffff906123448260405f2054169161232c64ffffffffff42168261296c565b905f52600760205283600360405f2001541690612283565b91821681101561235a57612357916122d4565b90565b50505f90565b9192909261236f818585611fb3565b833b61237c575b50505050565b6020906001600160a01b03809516946123dd60405194859384937f150b7a0200000000000000000000000000000000000000000000000000000000988986523360048701521660248501526044840152608060648401526084830190611d41565b03815f875af15f918161249c575b5061243a57826123f96132ef565b805191908261243357602482604051907f64a0ae920000000000000000000000000000000000000000000000000000000082526004820152fd5b9050602001fd5b7fffffffff00000000000000000000000000000000000000000000000000000000160361246b57505f808080612376565b602490604051907f64a0ae920000000000000000000000000000000000000000000000000000000082526004820152fd5b9091506020813d6020116124f1575b816124b860209383611f16565b8101031261028057517fffffffff000000000000000000000000000000000000000000000000000000008116810361028057905f6123eb565b3d91506124ab565b805f52600760205260405f20906fffffffffffffffffffffffffffffffff90818354169283156125aa57600383910154169261254764ffffffffff946125418642168561296c565b90612283565b918184841610156125a1575f52600760205260405f205460801c9182156125745783910316041642011690565b7f4e487b71000000000000000000000000000000000000000000000000000000005f52601260045260245ffd5b50505050505f90565b505050505f90565b805f5260026020526001600160a01b0360405f2054169081156125d3575090565b602490604051907f7e2732890000000000000000000000000000000000000000000000000000000082526004820152fd5b6001600160a01b037f000000000000000000000000000000000000000000000000000000000000000016300361263657565b60046040517fa1c0d6e5000000000000000000000000000000000000000000000000000000008152fd5b6001600160a01b0380831692831561291057825f526020916002835260409581875f2054168087141590816128c5575b5061288957845f526007845264ffffffffff806001895f20015460a01c16908083169180831061285357504216811161281d5750845f5260078452865f20926fffffffffffffffffffffffffffffffff80806003870154169554161580612815575b6127e55791612795917fea38d1d1aff61e6b0cba6cd61ef2c29eaf1231f67274a8415d068972793cbca59695949361273e61272d848b613272565b93612738858c61331e565b8a6133a1565b8083168096115f146127ac57885f526007875260038b5f2001907fffffffffffffffffffffffffffffffff00000000000000000000000000000000825491612788868285166122d4565b1691161790555b876133fe565b845f52600783526002875f200154169551908152a4565b50875f526007865260038a5f20017fffffffffffffffffffffffffffffffff00000000000000000000000000000000815416905561278f565b6024878a51907fd26fdefe0000000000000000000000000000000000000000000000000000000082526004820152fd5b5084156126f2565b6044908851907f3da502cd0000000000000000000000000000000000000000000000000000000082526004820152426024820152fd5b604490838b51917fc311eb2200000000000000000000000000000000000000000000000000000000835260048301526024820152fd5b606485878951917f4208ab4c00000000000000000000000000000000000000000000000000000000835260048301523360248301526044820152fd5b338114915081156128f3575b5080156128e0575b155f612690565b5033826128ec87611f91565b16146128d9565b90505f5260058452865f20335f52845260ff875f2054165f6128d1565b60046040517f44511d3c000000000000000000000000000000000000000000000000000000008152fd5b61296661235792825f5260076020526fffffffffffffffffffffffffffffffff60405f20541692613272565b906122d4565b5f52600760205260405f209064ffffffffff80600184015460a01c168082841611156125aa576fffffffffffffffffffffffffffffffff935460801c920316021690565b92919493946080526001600160a01b03831615612f42576fffffffffffffffffffffffffffffffff6080511615612f185760ff6129f56001600160a01b038416613502565b16908115612ede57600654809664ffffffffff938560405191612a1783611e94565b5f835260208301936080516fffffffffffffffffffffffffffffffff16855260408401906001600160a01b038b1682526060850190894216825260808601600181528a60a08801935f855260c08901931515845260e08901976001600160a01b03168852610100890196875261012089019a5f8c525f52600760205260405f2098516fffffffffffffffffffffffffffffffff16997fffffffffffffffffffffffffffffffff000000000000000000000000000000009a8b8b5416178a55516fffffffffffffffffffffffffffffffff16612b2e908a906fffffffffffffffffffffffffffffffff7fffffffffffffffffffffffffffffffff0000000000000000000000000000000083549260801b169116179055565b94516001600160a01b031660c08190527fffffffffffffffffffffffff000000000000000000000000000000000000000060a090815260018a01805497517fffffffffffffff000000000000000000000000000000000000000000000000009098169092179290961690951b78ffffffffff0000000000000000000000000000000000000000161784555115159183549051151560d01b7aff0000000000000000000000000000000000000000000000000000169151151560d81b7bff000000000000000000000000000000000000000000000000000000169260c81b79ff0000000000000000000000000000000000000000000000000016907fffffffff000000ffffffffffffffffffffffffffffffffffffffffffffffffff1617171790556002830191516001600160a01b03168254915160a01b74ff000000000000000000000000000000000000000016917fffffffffffffffffffffff000000000000000000000000000000000000000000161717905560030191516fffffffffffffffffffffffffffffffff1690825416179055600186016006556001600160a01b031692831561225357855f5260026020526001600160a01b0360405f205416151580612ec4575b612e9357855f5260026020526001600160a01b0360405f2054167ff8e1a15aba9398e019f0b49df1a4fde98ee17ae345cb5f6b5e2c27f5033e8ce760208215159283612e26575b875f526003825260405f2060018154019055895f526002825260405f208860a0518254161790558988604051927fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef5f80a4898152a1612df6576001600160a01b036080917f0f2b5c58ebf7a52a36df19f1671fe4b0013ad28137071386d4989e721edfd1719382604051968a88526fffffffffffffffffffffffffffffffff8651166020890152166040870152421660608601521692a3565b60246040517f73c6ac6e0000000000000000000000000000000000000000000000000000000081525f6004820152fd5b612e5d8a5f52600460205260405f207fffffffffffffffffffffffff00000000000000000000000000000000000000008154169055565b805f526003825260405f207fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8154019055612d3d565b602486604051907fff6a8c100000000000000000000000000000000000000000000000000000000082526004820152fd5b50600760205260ff600160405f20015460d81c1615612cf6565b6024836001600160a01b03604051917f696f6577000000000000000000000000000000000000000000000000000000008352166004820152fd5b60046040517f6fa3daaa000000000000000000000000000000000000000000000000000000008152fd5b60046040517ff9bb0fb3000000000000000000000000000000000000000000000000000000008152fd5b919060208201805167016345785d8a00009081811161301e5750506001600160a01b038084511615612ff457612ff294612fd461132c612fc3946fffffffffffffffffffffffffffffffff958691518289166136d1565b16612fce8185613594565b966122d4565b5f52600760205280600260405f200154169351169116913390613662565b565b60046040517f5f946a02000000000000000000000000000000000000000000000000000000008152fd5b6064918691604051927f37b1ada4000000000000000000000000000000000000000000000000000000008452600484015260248301526044820152fd5b90815f52600760205260ff600160405f20015460d01c161561315b576fffffffffffffffffffffffffffffffff8116908115612f185760026001600160a01b03916130ad64ffffffffff4216866133a1565b845f5260076020526130ff60405f209182906fffffffffffffffffffffffffffffffff7fffffffffffffffffffffffffffffffff0000000000000000000000000000000083549260801b169116179055565b600181017fffffffffff00ffffffffffffffffffffffffffffffffffffffffffffffffffff8154169055015416916040519182527fb86b09c78e5ae6a5db95b57ae4e84fdcfdea9580267b408a7a9735131c33849c60203393a4565b602482604051907fdc6fbbbc0000000000000000000000000000000000000000000000000000000082526004820152fd5b6fffffffffffffffffffffffffffffffff908183169182156132485761321a90825f52600760205260405f2080547fffffffffffffffffffffffffffffffff00000000000000000000000000000000836131e889828516612283565b169116179055825f5260076020526132116001600160a01b03600260405f200154169584613594565b16303386613662565b6040519182527f7b8a3e3a6e4e899000a8aa2f895cc0a348d2b9ce64b091f1b25b25d8fe65354e60203393a4565b60046040517f2da41ea3000000000000000000000000000000000000000000000000000000008152fd5b90815f52600760205260405f206fffffffffffffffffffffffffffffffff91828254169384156125a15783600384015416928584116132e7576001015460d01c60ff166132df57916132c86132cd92869461296c565b612283565b91821611156132da575090565b905090565b505091505090565b505050505090565b3d15613319573d9061330082611f57565b9161330e6040519384611f16565b82523d5f602084013e565b606090565b805f5260076020526fffffffffffffffffffffffffffffffff918260405f205416809382161161334d57505050565b6040517fcb5f605f00000000000000000000000000000000000000000000000000000000815260048101929092526fffffffffffffffffffffffffffffffff92831660248301529091166044820152606490fd5b90612ff2915f526007602052600160405f2001907fffffffffffffff0000000000ffffffffffffffffffffffffffffffffffffffff78ffffffffff000000000000000000000000000000000000000083549260a01b169116179055565b906134fd612ff293613462936134148282613594565b91815f52600760205260405f20907fffffffffffffffffffffffffffffffff000000000000000000000000000000008254916fffffffffffffffffffffffffffffffff9889918285166122d4565b1691161790555f5260076020526134d16001600160a01b03600260405f20015416936040519586937fa9059cbb000000000000000000000000000000000000000000000000000000006020860152169060248401602090939291936001600160a01b0360408201951681520152565b037fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe08101845283611f16565b6137f3565b5f809160405160208101907f313ce5670000000000000000000000000000000000000000000000000000000082526004815261353d81611ede565b51915afa6135496132ef565b9080613578575b1561357357602081805181010312610280576020015160ff811681036102805790565b505f90565b506020815114613550565b60ff16604d81116122a757600a0a90565b5f52600760205260ff600260405f20015460a01c166012811461365e576012811190811561364d577fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffee0160ff81116122a757905b15613622576136076fffffffffffffffffffffffffffffffff91613583565b91168181029181830414901517156122a7576123579061379e565b61362b90613583565b8015612574576fffffffffffffffffffffffffffffffff61235792160461379e565b60120360ff81116122a757906135e8565b5090565b9290604051927f23b872dd0000000000000000000000000000000000000000000000000000000060208501526001600160a01b03809216602485015216604483015260648201526064815260a081019181831067ffffffffffffffff841117611eb157612ff2926040526137f3565b9190917fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff8382098382029182808310920391808303921461378d57670de0b6b3a7640000908183101561375657947faccb18165bd6fe31ae1cf318dc5b51eee0e1ba569b88cd74c1773b91fac1066994950990828211900360ee1b910360121c170290565b60449086604051917f5173648d00000000000000000000000000000000000000000000000000000000835260048301526024820152fd5b5050670de0b6b3a764000090049150565b6fffffffffffffffffffffffffffffffff908181116137bb571690565b604490604051907f6dfcc650000000000000000000000000000000000000000000000000000000008252608060048301526024820152fd5b5f806001600160a01b0361381c93169360208151910182865af16138156132ef565b9083613887565b8051908115159182613863575b50506138325750565b602490604051907f5274afe70000000000000000000000000000000000000000000000000000000082526004820152fd5b81925090602091810103126102805760200151801590811503610280575f80613829565b906138c6575080511561389c57805190602001fd5b60046040517f1425ea42000000000000000000000000000000000000000000000000000000008152fd5b81511580613911575b6138d7575090565b6024906001600160a01b03604051917f9996b315000000000000000000000000000000000000000000000000000000008352166004820152fd5b50803b156138cf56fea164736f6c6343000817000a";

    function deploySablierFlow() public returns (ISablierFlow flow) {
        bytes memory bytecode = BYTECODE_FLOW;
        assembly {
            flow := create(0, add(bytecode, 0x20), mload(bytecode))
        }
        require(address(flow) != address(0), "Sablier Precompiles: deployment failed for Flow contract");
    }
}
