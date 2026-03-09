`include "quadra.vh"

module lut
(
    input  x1_t  x1,
    output a_t   a,
    output b_t   b,
    output c_t   c
);
    always_comb begin
        unique case (x1)
            7'd0: begin a = 23'sh52bec4; b = 19'sh16a09; c = 13'sh0b50; end
            7'd1: begin a = 23'sh542e67; b = 19'sh1752c; c = 13'sh0af4; end
            7'd2: begin a = 23'sh55a8fe; b = 19'sh17ff1; c = 13'sh0a95; end
            7'd3: begin a = 23'sh572e2a; b = 19'sh18a57; c = 13'sh0a34; end
            7'd4: begin a = 23'sh58bd8b; b = 19'sh19459; c = 13'sh09d0; end
            7'd5: begin a = 23'sh5a56bc; b = 19'sh19df7; c = 13'sh096a; end
            7'd6: begin a = 23'sh5bf957; b = 19'sh1a72d; c = 13'sh0901; end
            7'd7: begin a = 23'sh5da4f4; b = 19'sh1affa; c = 13'sh0896; end
            7'd8: begin a = 23'sh5f5928; b = 19'sh1b85a; c = 13'sh0829; end
            7'd9: begin a = 23'sh611585; b = 19'sh1c04c; c = 13'sh07ba; end
            7'd10: begin a = 23'sh62d99c; b = 19'sh1c7cf; c = 13'sh0749; end
            7'd11: begin a = 23'sh64a4fd; b = 19'sh1cedf; c = 13'sh06d6; end
            7'd12: begin a = 23'sh667734; b = 19'sh1d57c; c = 13'sh0662; end
            7'd13: begin a = 23'sh684fce; b = 19'sh1dba3; c = 13'sh05ec; end
            7'd14: begin a = 23'sh6a2e53; b = 19'sh1e153; c = 13'sh0574; end
            7'd15: begin a = 23'sh6c124d; b = 19'sh1e68b; c = 13'sh04fb; end
            7'd16: begin a = 23'sh6dfb42; b = 19'sh1eb4a; c = 13'sh0481; end
            7'd17: begin a = 23'sh6fe8b8; b = 19'sh1ef8d; c = 13'sh0405; end
            7'd18: begin a = 23'sh71da34; b = 19'sh1f355; c = 13'sh0389; end
            7'd19: begin a = 23'sh73cf39; b = 19'sh1f6a0; c = 13'sh030c; end
            7'd20: begin a = 23'sh75c74b; b = 19'sh1f96d; c = 13'sh028e; end
            7'd21: begin a = 23'sh77c1ea; b = 19'sh1fbbc; c = 13'sh020f; end
            7'd22: begin a = 23'sh79be99; b = 19'sh1fd8c; c = 13'sh0190; end
            7'd23: begin a = 23'sh7bbcd9; b = 19'sh1fedc; c = 13'sh0110; end
            7'd24: begin a = 23'sh7dbc29; b = 19'sh1ffad; c = 13'sh0090; end
            7'd25: begin a = 23'sh7fbc0a; b = 19'sh1fffe; c = 13'sh0010; end
            7'd26: begin a = 23'sh01bbfb; b = 19'sh1ffcf; c = 13'sh1f92; end
            7'd27: begin a = 23'sh03bb7e; b = 19'sh1ff20; c = 13'sh1f12; end
            7'd28: begin a = 23'sh05ba12; b = 19'sh1fdf2; c = 13'sh1e92; end
            7'd29: begin a = 23'sh07b738; b = 19'sh1fc44; c = 13'sh1e13; end
            7'd30: begin a = 23'sh09b270; b = 19'sh1fa16; c = 13'sh1d94; end
            7'd31: begin a = 23'sh0bab3b; b = 19'sh1f76a; c = 13'sh1d16; end
            7'd32: begin a = 23'sh0da11c; b = 19'sh1f441; c = 13'sh1c98; end
            7'd33: begin a = 23'sh0f9394; b = 19'sh1f09a; c = 13'sh1c1c; end
            7'd34: begin a = 23'sh118228; b = 19'sh1ec77; c = 13'sh1ba0; end
            7'd35: begin a = 23'sh136c5b; b = 19'sh1e7d9; c = 13'sh1b25; end
            7'd36: begin a = 23'sh1551b3; b = 19'sh1e2c2; c = 13'sh1aac; end
            7'd37: begin a = 23'sh1731b7; b = 19'sh1dd31; c = 13'sh1a34; end
            7'd38: begin a = 23'sh190bef; b = 19'sh1d729; c = 13'sh19be; end
            7'd39: begin a = 23'sh1adfe3; b = 19'sh1d0ac; c = 13'sh1949; end
            7'd40: begin a = 23'sh1cad20; b = 19'sh1c9ba; c = 13'sh18d5; end
            7'd41: begin a = 23'sh1e7332; b = 19'sh1c256; c = 13'sh1864; end
            7'd42: begin a = 23'sh2031a7; b = 19'sh1ba81; c = 13'sh17f4; end
            7'd43: begin a = 23'sh21e810; b = 19'sh1b23e; c = 13'sh1786; end
            7'd44: begin a = 23'sh2395ff; b = 19'sh1a98e; c = 13'sh171b; end
            7'd45: begin a = 23'sh253b09; b = 19'sh1a073; c = 13'sh16b2; end
            7'd46: begin a = 23'sh26d6c4; b = 19'sh196f1; c = 13'sh164b; end
            7'd47: begin a = 23'sh2868c9; b = 19'sh18d09; c = 13'sh15e6; end
            7'd48: begin a = 23'sh29f0b5; b = 19'sh182bd; c = 13'sh1584; end
            7'd49: begin a = 23'sh2b6e25; b = 19'sh17811; c = 13'sh1525; end
            7'd50: begin a = 23'sh2ce0b9; b = 19'sh16d07; c = 13'sh14c8; end
            7'd51: begin a = 23'sh2e4816; b = 19'sh161a2; c = 13'sh146e; end
            7'd52: begin a = 23'sh2fa3e0; b = 19'sh155e4; c = 13'sh1418; end
            7'd53: begin a = 23'sh30f3c2; b = 19'sh149d1; c = 13'sh13c4; end
            7'd54: begin a = 23'sh323767; b = 19'sh13d6b; c = 13'sh1373; end
            7'd55: begin a = 23'sh336e7f; b = 19'sh130b6; c = 13'sh1325; end
            7'd56: begin a = 23'sh3498bb; b = 19'sh123b5; c = 13'sh12da; end
            7'd57: begin a = 23'sh35b5d2; b = 19'sh1166b; c = 13'sh1293; end
            7'd58: begin a = 23'sh36c57b; b = 19'sh108db; c = 13'sh124f; end
            7'd59: begin a = 23'sh37c773; b = 19'sh0fb09; c = 13'sh120f; end
            7'd60: begin a = 23'sh38bb7a; b = 19'sh0ecf9; c = 13'sh11d2; end
            7'd61: begin a = 23'sh39a152; b = 19'sh0dead; c = 13'sh1198; end
            7'd62: begin a = 23'sh3a78c2; b = 19'sh0d029; c = 13'sh1162; end
            7'd63: begin a = 23'sh3b4194; b = 19'sh0c172; c = 13'sh1130; end
            7'd64: begin a = 23'sh3bfb96; b = 19'sh0b28a; c = 13'sh1102; end
            7'd65: begin a = 23'sh3ca699; b = 19'sh0a375; c = 13'sh10d7; end
            7'd66: begin a = 23'sh3d4273; b = 19'sh09438; c = 13'sh10b0; end
            7'd67: begin a = 23'sh3dcefd; b = 19'sh084d5; c = 13'sh108d; end
            7'd68: begin a = 23'sh3e4c13; b = 19'sh07551; c = 13'sh106d; end
            7'd69: begin a = 23'sh3eb997; b = 19'sh065b0; c = 13'sh1052; end
            7'd70: begin a = 23'sh3f176c; b = 19'sh055f6; c = 13'sh103b; end
            7'd71: begin a = 23'sh3f657d; b = 19'sh04626; c = 13'sh1027; end
            7'd72: begin a = 23'sh3fa3b4; b = 19'sh03644; c = 13'sh1018; end
            7'd73: begin a = 23'sh3fd202; b = 19'sh02655; c = 13'sh100c; end
            7'd74: begin a = 23'sh3ff05c; b = 19'sh0165d; c = 13'sh1004; end
            7'd75: begin a = 23'sh3ffebb; b = 19'sh0065f; c = 13'sh1001; end
            7'd76: begin a = 23'sh3ffd1a; b = 19'sh7f660; c = 13'sh1001; end
            7'd77: begin a = 23'sh3feb7a; b = 19'sh7e662; c = 13'sh1006; end
            7'd78: begin a = 23'sh3fc9e0; b = 19'sh7d66b; c = 13'sh100e; end
            7'd79: begin a = 23'sh3f9853; b = 19'sh7c67f; c = 13'sh101a; end
            7'd80: begin a = 23'sh3f56e1; b = 19'sh7b6a1; c = 13'sh102b; end
            7'd81: begin a = 23'sh3f0599; b = 19'sh7a6d5; c = 13'sh103f; end
            7'd82: begin a = 23'sh3ea491; b = 19'sh7971f; c = 13'sh1057; end
            7'd83: begin a = 23'sh3e33df; b = 19'sh78784; c = 13'sh1074; end
            7'd84: begin a = 23'sh3db3a1; b = 19'sh77806; c = 13'sh1094; end
            7'd85: begin a = 23'sh3d23f6; b = 19'sh768ab; c = 13'sh10b8; end
            7'd86: begin a = 23'sh3c8503; b = 19'sh75976; c = 13'sh10df; end
            7'd87: begin a = 23'sh3bd6ef; b = 19'sh74a6a; c = 13'sh110b; end
            7'd88: begin a = 23'sh3b19e5; b = 19'sh73b8b; c = 13'sh113a; end
            7'd89: begin a = 23'sh3a4e15; b = 19'sh72cde; c = 13'sh116d; end
            7'd90: begin a = 23'sh3973b2; b = 19'sh71e66; c = 13'sh11a4; end
            7'd91: begin a = 23'sh388af2; b = 19'sh71026; c = 13'sh11de; end
            7'd92: begin a = 23'sh379410; b = 19'sh70221; c = 13'sh121b; end
            7'd93: begin a = 23'sh368f49; b = 19'sh6f45d; c = 13'sh125d; end
            7'd94: begin a = 23'sh357cde; b = 19'sh6e6db; c = 13'sh12a1; end
            7'd95: begin a = 23'sh345d15; b = 19'sh6d99f; c = 13'sh12e9; end
            7'd96: begin a = 23'sh333034; b = 19'sh6ccad; c = 13'sh1334; end
            7'd97: begin a = 23'sh31f688; b = 19'sh6c008; c = 13'sh1383; end
            7'd98: begin a = 23'sh30b05f; b = 19'sh6b3b3; c = 13'sh13d4; end
            7'd99: begin a = 23'sh2f5e09; b = 19'sh6a7b1; c = 13'sh1429; end
            7'd100: begin a = 23'sh2dffdd; b = 19'sh69c05; c = 13'sh1481; end
            7'd101: begin a = 23'sh2c9630; b = 19'sh690b2; c = 13'sh14db; end
            7'd102: begin a = 23'sh2b215e; b = 19'sh685bb; c = 13'sh1538; end
            7'd103: begin a = 23'sh29a1c5; b = 19'sh67b22; c = 13'sh1598; end
            7'd104: begin a = 23'sh2817c3; b = 19'sh670eb; c = 13'sh15fb; end
            7'd105: begin a = 23'sh2683bb; b = 19'sh66717; c = 13'sh1660; end
            7'd106: begin a = 23'sh24e612; b = 19'sh65daa; c = 13'sh16c7; end
            7'd107: begin a = 23'sh233f30; b = 19'sh654a5; c = 13'sh1731; end
            7'd108: begin a = 23'sh218f7f; b = 19'sh64c0b; c = 13'sh179d; end
            7'd109: begin a = 23'sh1fd76a; b = 19'sh643de; c = 13'sh180b; end
            7'd110: begin a = 23'sh1e175f; b = 19'sh63c20; c = 13'sh187b; end
            7'd111: begin a = 23'sh1c4fce; b = 19'sh634d3; c = 13'sh18ed; end
            7'd112: begin a = 23'sh1a812a; b = 19'sh62df9; c = 13'sh1960; end
            7'd113: begin a = 23'sh18abe6; b = 19'sh62793; c = 13'sh19d6; end
            7'd114: begin a = 23'sh16d076; b = 19'sh621a3; c = 13'sh1a4c; end
            7'd115: begin a = 23'sh14ef53; b = 19'sh61c2b; c = 13'sh1ac5; end
            7'd116: begin a = 23'sh1308f4; b = 19'sh6172c; c = 13'sh1b3e; end
            7'd117: begin a = 23'sh111dd3; b = 19'sh612a7; c = 13'sh1bb9; end
            7'd118: begin a = 23'sh0f2e6a; b = 19'sh60e9d; c = 13'sh1c35; end
            7'd119: begin a = 23'sh0d3b36; b = 19'sh60b10; c = 13'sh1cb2; end
            7'd120: begin a = 23'sh0b44b3; b = 19'sh60800; c = 13'sh1d2f; end
            7'd121: begin a = 23'sh094b5f; b = 19'sh6056e; c = 13'sh1dae; end
            7'd122: begin a = 23'sh074fb8; b = 19'sh6035b; c = 13'sh1e2d; end
            7'd123: begin a = 23'sh05523e; b = 19'sh601c6; c = 13'sh1eac; end
            7'd124: begin a = 23'sh03536f; b = 19'sh600b2; c = 13'sh1f2c; end
            7'd125: begin a = 23'sh0153cb; b = 19'sh6001d; c = 13'sh1fac; end
            7'd126: begin a = 23'sh7f53d3; b = 19'sh60008; c = 13'sh002b; end
            7'd127: begin a = 23'sh7d5405; b = 19'sh60073; c = 13'sh00aa; end
            default: begin a = '0; b = '0; c = '0; end
        endcase
    end
endmodule
