(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g12112_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g12113_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g12114_| (gx#core-quote-syntax 'make-expander-context))
  (define |gx[1]#_g12115_| (gx#core-quote-syntax 'expander-context?))
  (define |gx[1]#_g12116_| (gx#core-quote-syntax 'expander-context-id))
  (define |gx[1]#_g12117_| (gx#core-quote-syntax 'expander-context-table))
  (define |gx[1]#_g12118_| (gx#core-quote-syntax 'expander-context-id-set!))
  (define |gx[1]#_g12119_| (gx#core-quote-syntax 'expander-context-table-set!))
  (define |gx[1]#_g12120_| (gx#core-quote-syntax 'root-context::t))
  (define |gx[1]#_g12121_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g12122_| (gx#core-quote-syntax 'root-context::t))
  (define |gx[1]#_g12123_| (gx#core-quote-syntax 'make-root-context))
  (define |gx[1]#_g12124_| (gx#core-quote-syntax 'root-context?))
  (define |gx[1]#_g12125_| (gx#core-quote-syntax 'expander-context))
  (define |gx[1]#_g12126_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g12127_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g12128_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g12129_| (gx#core-quote-syntax 'make-phi-context))
  (define |gx[1]#_g12130_| (gx#core-quote-syntax 'phi-context?))
  (define |gx[1]#_g12131_| (gx#core-quote-syntax 'phi-context-super))
  (define |gx[1]#_g12132_| (gx#core-quote-syntax 'phi-context-up))
  (define |gx[1]#_g12133_| (gx#core-quote-syntax 'phi-context-down))
  (define |gx[1]#_g12134_| (gx#core-quote-syntax 'phi-context-super-set!))
  (define |gx[1]#_g12135_| (gx#core-quote-syntax 'phi-context-up-set!))
  (define |gx[1]#_g12136_| (gx#core-quote-syntax 'phi-context-down-set!))
  (define |gx[1]#_g12137_| (gx#core-quote-syntax 'expander-context))
  (define |gx[1]#_g12138_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g12139_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g12140_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g12141_| (gx#core-quote-syntax 'make-top-context))
  (define |gx[1]#_g12142_| (gx#core-quote-syntax 'top-context?))
  (define |gx[1]#_g12143_| (gx#core-quote-syntax 'phi-context))
  (define |gx[1]#_g12144_| (gx#core-quote-syntax 'module-context::t))
  (define |gx[1]#_g12145_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g12146_| (gx#core-quote-syntax 'module-context::t))
  (define |gx[1]#_g12147_| (gx#core-quote-syntax 'make-module-context))
  (define |gx[1]#_g12148_| (gx#core-quote-syntax 'module-context?))
  (define |gx[1]#_g12149_| (gx#core-quote-syntax 'module-context-ns))
  (define |gx[1]#_g12150_| (gx#core-quote-syntax 'module-context-path))
  (define |gx[1]#_g12151_| (gx#core-quote-syntax 'module-context-import))
  (define |gx[1]#_g12152_| (gx#core-quote-syntax 'module-context-export))
  (define |gx[1]#_g12153_| (gx#core-quote-syntax 'module-context-e))
  (define |gx[1]#_g12154_| (gx#core-quote-syntax 'module-context-code))
  (define |gx[1]#_g12155_| (gx#core-quote-syntax 'module-context-ns-set!))
  (define |gx[1]#_g12156_| (gx#core-quote-syntax 'module-context-path-set!))
  (define |gx[1]#_g12157_| (gx#core-quote-syntax 'module-context-import-set!))
  (define |gx[1]#_g12158_| (gx#core-quote-syntax 'module-context-export-set!))
  (define |gx[1]#_g12159_| (gx#core-quote-syntax 'module-context-e-set!))
  (define |gx[1]#_g12160_| (gx#core-quote-syntax 'module-context-code-set!))
  (define |gx[1]#_g12161_| (gx#core-quote-syntax 'top-context))
  (define |gx[1]#_g12162_| (gx#core-quote-syntax 'prelude-context::t))
  (define |gx[1]#_g12163_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g12164_| (gx#core-quote-syntax 'prelude-context::t))
  (define |gx[1]#_g12165_| (gx#core-quote-syntax 'make-prelude-context))
  (define |gx[1]#_g12166_| (gx#core-quote-syntax 'prelude-context?))
  (define |gx[1]#_g12167_| (gx#core-quote-syntax 'prelude-context-path))
  (define |gx[1]#_g12168_| (gx#core-quote-syntax 'prelude-context-import))
  (define |gx[1]#_g12169_| (gx#core-quote-syntax 'prelude-context-e))
  (define |gx[1]#_g12170_| (gx#core-quote-syntax 'prelude-context-path-set!))
  (define |gx[1]#_g12171_| (gx#core-quote-syntax 'prelude-context-import-set!))
  (define |gx[1]#_g12172_| (gx#core-quote-syntax 'prelude-context-e-set!))
  (define |gx[1]#_g12173_| (gx#core-quote-syntax 'top-context))
  (define |gx[1]#_g12174_| (gx#core-quote-syntax 'local-context::t))
  (define |gx[1]#_g12175_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g12176_| (gx#core-quote-syntax 'local-context::t))
  (define |gx[1]#_g12177_| (gx#core-quote-syntax 'make-local-context))
  (define |gx[1]#_g12178_| (gx#core-quote-syntax 'local-context?))
  (define |gx[1]#_g12179_| (gx#core-quote-syntax 'phi-context))
  (define |gx[1]#_g12180_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g12181_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g12182_| (gx#core-quote-syntax 'make-binding))
  (define |gx[1]#_g12183_| (gx#core-quote-syntax 'binding?))
  (define |gx[1]#_g12184_| (gx#core-quote-syntax 'binding-id))
  (define |gx[1]#_g12185_| (gx#core-quote-syntax 'binding-key))
  (define |gx[1]#_g12186_| (gx#core-quote-syntax 'binding-phi))
  (define |gx[1]#_g12187_| (gx#core-quote-syntax 'binding-id-set!))
  (define |gx[1]#_g12188_| (gx#core-quote-syntax 'binding-key-set!))
  (define |gx[1]#_g12189_| (gx#core-quote-syntax 'binding-phi-set!))
  (define |gx[1]#_g12190_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g12191_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g12192_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g12193_| (gx#core-quote-syntax 'make-runtime-binding))
  (define |gx[1]#_g12194_| (gx#core-quote-syntax 'runtime-binding?))
  (define |gx[1]#_g12195_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g12196_| (gx#core-quote-syntax 'local-binding::t))
  (define |gx[1]#_g12197_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g12198_| (gx#core-quote-syntax 'local-binding::t))
  (define |gx[1]#_g12199_| (gx#core-quote-syntax 'make-local-binding))
  (define |gx[1]#_g12200_| (gx#core-quote-syntax 'local-binding?))
  (define |gx[1]#_g12201_| (gx#core-quote-syntax 'runtime-binding))
  (define |gx[1]#_g12202_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g12203_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g12204_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g12205_| (gx#core-quote-syntax 'make-top-binding))
  (define |gx[1]#_g12206_| (gx#core-quote-syntax 'top-binding?))
  (define |gx[1]#_g12207_| (gx#core-quote-syntax 'runtime-binding))
  (define |gx[1]#_g12208_| (gx#core-quote-syntax 'module-binding::t))
  (define |gx[1]#_g12209_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g12210_| (gx#core-quote-syntax 'module-binding::t))
  (define |gx[1]#_g12211_| (gx#core-quote-syntax 'make-module-binding))
  (define |gx[1]#_g12212_| (gx#core-quote-syntax 'module-binding?))
  (define |gx[1]#_g12213_| (gx#core-quote-syntax 'module-binding-context))
  (define |gx[1]#_g12214_| (gx#core-quote-syntax 'module-binding-context-set!))
  (define |gx[1]#_g12215_| (gx#core-quote-syntax 'top-binding))
  (define |gx[1]#_g12216_| (gx#core-quote-syntax 'extern-binding::t))
  (define |gx[1]#_g12217_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g12218_| (gx#core-quote-syntax 'extern-binding::t))
  (define |gx[1]#_g12219_| (gx#core-quote-syntax 'make-extern-binding))
  (define |gx[1]#_g12220_| (gx#core-quote-syntax 'extern-binding?))
  (define |gx[1]#_g12221_| (gx#core-quote-syntax 'top-binding))
  (define |gx[1]#_g12222_| (gx#core-quote-syntax 'syntax-binding::t))
  (define |gx[1]#_g12223_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g12224_| (gx#core-quote-syntax 'syntax-binding::t))
  (define |gx[1]#_g12225_| (gx#core-quote-syntax 'make-syntax-binding))
  (define |gx[1]#_g12226_| (gx#core-quote-syntax 'syntax-binding?))
  (define |gx[1]#_g12227_| (gx#core-quote-syntax 'syntax-binding-e))
  (define |gx[1]#_g12228_| (gx#core-quote-syntax 'syntax-binding-e-set!))
  (define |gx[1]#_g12229_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g12230_| (gx#core-quote-syntax 'import-binding::t))
  (define |gx[1]#_g12231_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g12232_| (gx#core-quote-syntax 'import-binding::t))
  (define |gx[1]#_g12233_| (gx#core-quote-syntax 'make-import-binding))
  (define |gx[1]#_g12234_| (gx#core-quote-syntax 'import-binding?))
  (define |gx[1]#_g12235_| (gx#core-quote-syntax 'import-binding-e))
  (define |gx[1]#_g12236_| (gx#core-quote-syntax 'import-binding-context))
  (define |gx[1]#_g12237_| (gx#core-quote-syntax 'import-binding-weak?))
  (define |gx[1]#_g12238_| (gx#core-quote-syntax 'import-binding-e-set!))
  (define |gx[1]#_g12239_| (gx#core-quote-syntax 'import-binding-context-set!))
  (define |gx[1]#_g12240_| (gx#core-quote-syntax 'import-binding-weak?-set!))
  (define |gx[1]#_g12241_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g12242_| (gx#core-quote-syntax 'alias-binding::t))
  (define |gx[1]#_g12243_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g12244_| (gx#core-quote-syntax 'alias-binding::t))
  (define |gx[1]#_g12245_| (gx#core-quote-syntax 'make-alias-binding))
  (define |gx[1]#_g12246_| (gx#core-quote-syntax 'alias-binding?))
  (define |gx[1]#_g12247_| (gx#core-quote-syntax 'alias-binding-e))
  (define |gx[1]#_g12248_| (gx#core-quote-syntax 'alias-binding-e-set!))
  (define |gx[1]#_g12249_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g12250_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12251_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12252_| (gx#core-quote-syntax 'make-expander))
  (define |gx[1]#_g12253_| (gx#core-quote-syntax 'expander?))
  (define |gx[1]#_g12254_| (gx#core-quote-syntax 'expander-e))
  (define |gx[1]#_g12255_| (gx#core-quote-syntax 'expander-e-set!))
  (define |gx[1]#_g12256_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g12257_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12258_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g12259_| (gx#core-quote-syntax 'make-core-expander))
  (define |gx[1]#_g12260_| (gx#core-quote-syntax 'core-expander?))
  (define |gx[1]#_g12261_| (gx#core-quote-syntax 'core-expander-id))
  (define |gx[1]#_g12262_| (gx#core-quote-syntax 'core-expander-compile-top))
  (define |gx[1]#_g12263_| (gx#core-quote-syntax 'core-expander-id-set!))
  (define |gx[1]#_g12264_|
    (gx#core-quote-syntax 'core-expander-compile-top-set!))
  (define |gx[1]#_g12265_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g12266_| (gx#core-quote-syntax 'expression-form::t))
  (define |gx[1]#_g12267_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g12268_| (gx#core-quote-syntax 'expression-form::t))
  (define |gx[1]#_g12269_| (gx#core-quote-syntax 'make-expression-form))
  (define |gx[1]#_g12270_| (gx#core-quote-syntax 'expression-form?))
  (define |gx[1]#_g12271_| (gx#core-quote-syntax 'core-expander))
  (define |gx[1]#_g12272_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g12273_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g12274_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g12275_| (gx#core-quote-syntax 'make-special-form))
  (define |gx[1]#_g12276_| (gx#core-quote-syntax 'special-form?))
  (define |gx[1]#_g12277_| (gx#core-quote-syntax 'core-expander))
  (define |gx[1]#_g12278_| (gx#core-quote-syntax 'definition-form::t))
  (define |gx[1]#_g12279_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g12280_| (gx#core-quote-syntax 'definition-form::t))
  (define |gx[1]#_g12281_| (gx#core-quote-syntax 'make-definition-form))
  (define |gx[1]#_g12282_| (gx#core-quote-syntax 'definition-form?))
  (define |gx[1]#_g12283_| (gx#core-quote-syntax 'special-form))
  (define |gx[1]#_g12284_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g12285_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g12286_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g12287_| (gx#core-quote-syntax 'make-top-special-form))
  (define |gx[1]#_g12288_| (gx#core-quote-syntax 'top-special-form?))
  (define |gx[1]#_g12289_| (gx#core-quote-syntax 'special-form))
  (define |gx[1]#_g12290_| (gx#core-quote-syntax 'module-special-form::t))
  (define |gx[1]#_g12291_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g12292_| (gx#core-quote-syntax 'module-special-form::t))
  (define |gx[1]#_g12293_| (gx#core-quote-syntax 'make-module-special-form))
  (define |gx[1]#_g12294_| (gx#core-quote-syntax 'module-special-form?))
  (define |gx[1]#_g12295_| (gx#core-quote-syntax 'top-special-form))
  (define |gx[1]#_g12296_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g12297_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12298_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g12299_| (gx#core-quote-syntax 'make-feature-expander))
  (define |gx[1]#_g12300_| (gx#core-quote-syntax 'feature-expander?))
  (define |gx[1]#_g12301_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g12302_| (gx#core-quote-syntax 'private-feature-expander::t))
  (define |gx[1]#_g12303_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g12304_| (gx#core-quote-syntax 'private-feature-expander::t))
  (define |gx[1]#_g12305_|
    (gx#core-quote-syntax 'make-private-feature-expander))
  (define |gx[1]#_g12306_| (gx#core-quote-syntax 'private-feature-expander?))
  (define |gx[1]#_g12307_| (gx#core-quote-syntax 'feature-expander))
  (define |gx[1]#_g12308_| (gx#core-quote-syntax 'reserved-expander::t))
  (define |gx[1]#_g12309_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12310_| (gx#core-quote-syntax 'reserved-expander::t))
  (define |gx[1]#_g12311_| (gx#core-quote-syntax 'make-reserved-expander))
  (define |gx[1]#_g12312_| (gx#core-quote-syntax 'reserved-expander?))
  (define |gx[1]#_g12313_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g12314_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g12315_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12316_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g12317_| (gx#core-quote-syntax 'make-macro-expander))
  (define |gx[1]#_g12318_| (gx#core-quote-syntax 'macro-expander?))
  (define |gx[1]#_g12319_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g12320_| (gx#core-quote-syntax 'rename-macro-expander::t))
  (define |gx[1]#_g12321_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g12322_| (gx#core-quote-syntax 'rename-macro-expander::t))
  (define |gx[1]#_g12323_| (gx#core-quote-syntax 'make-rename-macro-expander))
  (define |gx[1]#_g12324_| (gx#core-quote-syntax 'rename-macro-expander?))
  (define |gx[1]#_g12325_| (gx#core-quote-syntax 'macro-expander))
  (define |gx[1]#_g12326_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g12327_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g12328_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g12329_| (gx#core-quote-syntax 'make-user-expander))
  (define |gx[1]#_g12330_| (gx#core-quote-syntax 'user-expander?))
  (define |gx[1]#_g12331_| (gx#core-quote-syntax 'user-expander-context))
  (define |gx[1]#_g12332_| (gx#core-quote-syntax 'user-expander-phi))
  (define |gx[1]#_g12333_| (gx#core-quote-syntax 'user-expander-context-set!))
  (define |gx[1]#_g12334_| (gx#core-quote-syntax 'user-expander-phi-set!))
  (define |gx[1]#_g12335_| (gx#core-quote-syntax 'macro-expander))
  (define |gx[1]#_g12336_| (gx#core-quote-syntax 'expander-mark::t))
  (define |gx[1]#_g12337_| (gx#core-quote-syntax 'expander-mark::t))
  (define |gx[1]#_g12338_| (gx#core-quote-syntax 'make-expander-mark))
  (define |gx[1]#_g12339_| (gx#core-quote-syntax 'expander-mark?))
  (define |gx[1]#_g12340_| (gx#core-quote-syntax 'expander-mark-subst))
  (define |gx[1]#_g12341_| (gx#core-quote-syntax 'expander-mark-context))
  (define |gx[1]#_g12342_| (gx#core-quote-syntax 'expander-mark-phi))
  (define |gx[1]#_g12343_| (gx#core-quote-syntax 'expander-mark-trace))
  (define |gx[1]#_g12344_| (gx#core-quote-syntax 'expander-mark-subst-set!))
  (define |gx[1]#_g12345_| (gx#core-quote-syntax 'expander-mark-context-set!))
  (define |gx[1]#_g12346_| (gx#core-quote-syntax 'expander-mark-phi-set!))
  (define |gx[1]#_g12347_| (gx#core-quote-syntax 'expander-mark-trace-set!))
  (define |gx[1]#_g12348_| (gx#core-quote-syntax 'syntax-error::t))
  (define |gx[1]#_g12349_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g12350_| (gx#core-quote-syntax 'syntax-error::t))
  (define |gx[1]#_g12351_| (gx#core-quote-syntax 'make-syntax-error))
  (define |gx[1]#_g12352_| (gx#core-quote-syntax 'syntax-error?))
  (define |gx[1]#_g12353_| (gx#core-quote-syntax 'syntax-error-context))
  (define |gx[1]#_g12354_| (gx#core-quote-syntax 'syntax-error-marks))
  (define |gx[1]#_g12355_| (gx#core-quote-syntax 'syntax-error-phi))
  (define |gx[1]#_g12356_| (gx#core-quote-syntax 'syntax-error-context-set!))
  (define |gx[1]#_g12357_| (gx#core-quote-syntax 'syntax-error-marks-set!))
  (define |gx[1]#_g12358_| (gx#core-quote-syntax 'syntax-error-phi-set!))
  (define |gx[1]#_g12359_| (gx#core-quote-syntax '<error>))
  (begin
    (define |gx[:0:]#expander-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12112_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12113_|
                   (cons |gx[1]#_g12114_|
                         (cons |gx[1]#_g12115_|
                               (cons (cons |gx[1]#_g12116_|
                                           (cons |gx[1]#_g12117_| '()))
                                     (cons (cons |gx[1]#_g12118_|
                                                 (cons |gx[1]#_g12119_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expander-context::t
        '#f
        'expander-context
        ':init!
        '()
        '(id table))))
    (define |gx[:0:]#root-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12120_|
       'expander-identifiers:
       (cons |gx[1]#_g12121_|
             (cons |gx[1]#_g12122_|
                   (cons |gx[1]#_g12123_|
                         (cons |gx[1]#_g12124_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#root-context::t
        |gx[1]#_g12125_|
        'root-context
        '#f
        '()
        '())))
    (define |gx[:0:]#phi-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12126_|
       'expander-identifiers:
       (cons |gx[1]#_g12127_|
             (cons |gx[1]#_g12128_|
                   (cons |gx[1]#_g12129_|
                         (cons |gx[1]#_g12130_|
                               (cons (cons |gx[1]#_g12131_|
                                           (cons |gx[1]#_g12132_|
                                                 (cons |gx[1]#_g12133_| '())))
                                     (cons (cons |gx[1]#_g12134_|
                                                 (cons |gx[1]#_g12135_|
                                                       (cons |gx[1]#_g12136_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#context-phi::t
        |gx[1]#_g12137_|
        'phi-context
        '#f
        '()
        '(super up down))))
    (define |gx[:0:]#top-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12138_|
       'expander-identifiers:
       (cons |gx[1]#_g12139_|
             (cons |gx[1]#_g12140_|
                   (cons |gx[1]#_g12141_|
                         (cons |gx[1]#_g12142_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-context::t
        |gx[1]#_g12143_|
        'top-context
        '#f
        '()
        '())))
    (define |gx[:0:]#module-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12144_|
       'expander-identifiers:
       (cons |gx[1]#_g12145_|
             (cons |gx[1]#_g12146_|
                   (cons |gx[1]#_g12147_|
                         (cons |gx[1]#_g12148_|
                               (cons (cons |gx[1]#_g12149_|
                                           (cons |gx[1]#_g12150_|
                                                 (cons |gx[1]#_g12151_|
                                                       (cons |gx[1]#_g12152_|
                                                             (cons |gx[1]#_g12153_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g12154_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g12155_|
                                                 (cons |gx[1]#_g12156_|
                                                       (cons |gx[1]#_g12157_|
                                                             (cons |gx[1]#_g12158_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g12159_|
                                 (cons |gx[1]#_g12160_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-context::t
        |gx[1]#_g12161_|
        'module-context
        '#f
        '()
        '(ns path import export e code))))
    (define |gx[:0:]#prelude-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12162_|
       'expander-identifiers:
       (cons |gx[1]#_g12163_|
             (cons |gx[1]#_g12164_|
                   (cons |gx[1]#_g12165_|
                         (cons |gx[1]#_g12166_|
                               (cons (cons |gx[1]#_g12167_|
                                           (cons |gx[1]#_g12168_|
                                                 (cons |gx[1]#_g12169_| '())))
                                     (cons (cons |gx[1]#_g12170_|
                                                 (cons |gx[1]#_g12171_|
                                                       (cons |gx[1]#_g12172_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#prelude-context::t
        |gx[1]#_g12173_|
        'prelude-context
        '#f
        '()
        '(path import e))))
    (define |gx[:0:]#local-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12174_|
       'expander-identifiers:
       (cons |gx[1]#_g12175_|
             (cons |gx[1]#_g12176_|
                   (cons |gx[1]#_g12177_|
                         (cons |gx[1]#_g12178_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-context::t
        |gx[1]#_g12179_|
        'local-context
        '#f
        '()
        '())))
    (define |gx[:0:]#binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12180_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12181_|
                   (cons |gx[1]#_g12182_|
                         (cons |gx[1]#_g12183_|
                               (cons (cons |gx[1]#_g12184_|
                                           (cons |gx[1]#_g12185_|
                                                 (cons |gx[1]#_g12186_| '())))
                                     (cons (cons |gx[1]#_g12187_|
                                                 (cons |gx[1]#_g12188_|
                                                       (cons |gx[1]#_g12189_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#binding::t
        '#f
        'binding
        '#f
        '()
        '(id key phi))))
    (define |gx[:0:]#runtime-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12190_|
       'expander-identifiers:
       (cons |gx[1]#_g12191_|
             (cons |gx[1]#_g12192_|
                   (cons |gx[1]#_g12193_|
                         (cons |gx[1]#_g12194_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#runtime-binding::t
        |gx[1]#_g12195_|
        'runtime-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#local-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12196_|
       'expander-identifiers:
       (cons |gx[1]#_g12197_|
             (cons |gx[1]#_g12198_|
                   (cons |gx[1]#_g12199_|
                         (cons |gx[1]#_g12200_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-binding::t
        |gx[1]#_g12201_|
        'local-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#top-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12202_|
       'expander-identifiers:
       (cons |gx[1]#_g12203_|
             (cons |gx[1]#_g12204_|
                   (cons |gx[1]#_g12205_|
                         (cons |gx[1]#_g12206_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-binding::t
        |gx[1]#_g12207_|
        'top-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#module-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12208_|
       'expander-identifiers:
       (cons |gx[1]#_g12209_|
             (cons |gx[1]#_g12210_|
                   (cons |gx[1]#_g12211_|
                         (cons |gx[1]#_g12212_|
                               (cons (cons |gx[1]#_g12213_| '())
                                     (cons (cons |gx[1]#_g12214_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-binding::t
        |gx[1]#_g12215_|
        'module-binding
        '#f
        '()
        '(context))))
    (define |gx[:0:]#extern-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12216_|
       'expander-identifiers:
       (cons |gx[1]#_g12217_|
             (cons |gx[1]#_g12218_|
                   (cons |gx[1]#_g12219_|
                         (cons |gx[1]#_g12220_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#extern-binding::t
        |gx[1]#_g12221_|
        'extern-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#syntax-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12222_|
       'expander-identifiers:
       (cons |gx[1]#_g12223_|
             (cons |gx[1]#_g12224_|
                   (cons |gx[1]#_g12225_|
                         (cons |gx[1]#_g12226_|
                               (cons (cons |gx[1]#_g12227_| '())
                                     (cons (cons |gx[1]#_g12228_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-binding::t
        |gx[1]#_g12229_|
        'syntax-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#import-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12230_|
       'expander-identifiers:
       (cons |gx[1]#_g12231_|
             (cons |gx[1]#_g12232_|
                   (cons |gx[1]#_g12233_|
                         (cons |gx[1]#_g12234_|
                               (cons (cons |gx[1]#_g12235_|
                                           (cons |gx[1]#_g12236_|
                                                 (cons |gx[1]#_g12237_| '())))
                                     (cons (cons |gx[1]#_g12238_|
                                                 (cons |gx[1]#_g12239_|
                                                       (cons |gx[1]#_g12240_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-binding::t
        |gx[1]#_g12241_|
        'import-binding
        '#f
        '((final: . #t))
        '(e context weak?))))
    (define |gx[:0:]#alias-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12242_|
       'expander-identifiers:
       (cons |gx[1]#_g12243_|
             (cons |gx[1]#_g12244_|
                   (cons |gx[1]#_g12245_|
                         (cons |gx[1]#_g12246_|
                               (cons (cons |gx[1]#_g12247_| '())
                                     (cons (cons |gx[1]#_g12248_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#alias-binding::t
        |gx[1]#_g12249_|
        'alias-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12250_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12251_|
                   (cons |gx[1]#_g12252_|
                         (cons |gx[1]#_g12253_|
                               (cons (cons |gx[1]#_g12254_| '())
                                     (cons (cons |gx[1]#_g12255_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expander::t
        '#f
        'expander
        '#f
        '()
        '(e))))
    (define |gx[:0:]#core-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12256_|
       'expander-identifiers:
       (cons |gx[1]#_g12257_|
             (cons |gx[1]#_g12258_|
                   (cons |gx[1]#_g12259_|
                         (cons |gx[1]#_g12260_|
                               (cons (cons |gx[1]#_g12261_|
                                           (cons |gx[1]#_g12262_| '()))
                                     (cons (cons |gx[1]#_g12263_|
                                                 (cons |gx[1]#_g12264_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-expander::t
        |gx[1]#_g12265_|
        'core-expander
        '#f
        '()
        '(id compile-top))))
    (define |gx[:0:]#expression-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12266_|
       'expander-identifiers:
       (cons |gx[1]#_g12267_|
             (cons |gx[1]#_g12268_|
                   (cons |gx[1]#_g12269_|
                         (cons |gx[1]#_g12270_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expression-form::t
        |gx[1]#_g12271_|
        'expression-form
        '#f
        '()
        '())))
    (define |gx[:0:]#special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12272_|
       'expander-identifiers:
       (cons |gx[1]#_g12273_|
             (cons |gx[1]#_g12274_|
                   (cons |gx[1]#_g12275_|
                         (cons |gx[1]#_g12276_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#special-form::t
        |gx[1]#_g12277_|
        'special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#definition-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12278_|
       'expander-identifiers:
       (cons |gx[1]#_g12279_|
             (cons |gx[1]#_g12280_|
                   (cons |gx[1]#_g12281_|
                         (cons |gx[1]#_g12282_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#definition-form::t
        |gx[1]#_g12283_|
        'definition-form
        '#f
        '()
        '())))
    (define |gx[:0:]#top-special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12284_|
       'expander-identifiers:
       (cons |gx[1]#_g12285_|
             (cons |gx[1]#_g12286_|
                   (cons |gx[1]#_g12287_|
                         (cons |gx[1]#_g12288_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-special-form::t
        |gx[1]#_g12289_|
        'top-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#module-special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12290_|
       'expander-identifiers:
       (cons |gx[1]#_g12291_|
             (cons |gx[1]#_g12292_|
                   (cons |gx[1]#_g12293_|
                         (cons |gx[1]#_g12294_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-special-form::t
        |gx[1]#_g12295_|
        'module-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#feature-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12296_|
       'expander-identifiers:
       (cons |gx[1]#_g12297_|
             (cons |gx[1]#_g12298_|
                   (cons |gx[1]#_g12299_|
                         (cons |gx[1]#_g12300_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#feature-expander::t
        |gx[1]#_g12301_|
        'feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#private-feature-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12302_|
       'expander-identifiers:
       (cons |gx[1]#_g12303_|
             (cons |gx[1]#_g12304_|
                   (cons |gx[1]#_g12305_|
                         (cons |gx[1]#_g12306_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#private-feature-expander::t
        |gx[1]#_g12307_|
        'private-feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#reserved-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12308_|
       'expander-identifiers:
       (cons |gx[1]#_g12309_|
             (cons |gx[1]#_g12310_|
                   (cons |gx[1]#_g12311_|
                         (cons |gx[1]#_g12312_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#reserved-expander::t
        |gx[1]#_g12313_|
        'reserved-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#macro-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12314_|
       'expander-identifiers:
       (cons |gx[1]#_g12315_|
             (cons |gx[1]#_g12316_|
                   (cons |gx[1]#_g12317_|
                         (cons |gx[1]#_g12318_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-macro::t
        |gx[1]#_g12319_|
        'macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#rename-macro-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12320_|
       'expander-identifiers:
       (cons |gx[1]#_g12321_|
             (cons |gx[1]#_g12322_|
                   (cons |gx[1]#_g12323_|
                         (cons |gx[1]#_g12324_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#rename-macro-expander::t
        |gx[1]#_g12325_|
        'rename-macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#user-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12326_|
       'expander-identifiers:
       (cons |gx[1]#_g12327_|
             (cons |gx[1]#_g12328_|
                   (cons |gx[1]#_g12329_|
                         (cons |gx[1]#_g12330_|
                               (cons (cons |gx[1]#_g12331_|
                                           (cons |gx[1]#_g12332_| '()))
                                     (cons (cons |gx[1]#_g12333_|
                                                 (cons |gx[1]#_g12334_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#macro-expander::t
        |gx[1]#_g12335_|
        'user-expander
        '#f
        '()
        '(context phi))))
    (define |gx[:0:]#expander-mark|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12336_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12337_|
                   (cons |gx[1]#_g12338_|
                         (cons |gx[1]#_g12339_|
                               (cons (cons |gx[1]#_g12340_|
                                           (cons |gx[1]#_g12341_|
                                                 (cons |gx[1]#_g12342_|
                                                       (cons |gx[1]#_g12343_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g12344_|
                                                 (cons |gx[1]#_g12345_|
                                                       (cons |gx[1]#_g12346_|
                                                             (cons |gx[1]#_g12347_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expander-mark::t
        '#f
        'expander-mark
        '#f
        '()
        '(subst context phi trace))))
    (define |gx[:0:]#syntax-error|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12348_|
       'expander-identifiers:
       (cons |gx[1]#_g12349_|
             (cons |gx[1]#_g12350_|
                   (cons |gx[1]#_g12351_|
                         (cons |gx[1]#_g12352_|
                               (cons (cons |gx[1]#_g12353_|
                                           (cons |gx[1]#_g12354_|
                                                 (cons |gx[1]#_g12355_| '())))
                                     (cons (cons |gx[1]#_g12356_|
                                                 (cons |gx[1]#_g12357_|
                                                       (cons |gx[1]#_g12358_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-error::t
        |gx[1]#_g12359_|
        'syntax-error
        '#f
        '()
        '(context marks phi))))))
