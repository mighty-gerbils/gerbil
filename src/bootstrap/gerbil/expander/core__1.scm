(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g12275_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g12276_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g12277_| (gx#core-quote-syntax 'make-expander-context))
  (define |gx[1]#_g12278_| (gx#core-quote-syntax 'expander-context?))
  (define |gx[1]#_g12279_| (gx#core-quote-syntax 'expander-context-id))
  (define |gx[1]#_g12280_| (gx#core-quote-syntax 'expander-context-table))
  (define |gx[1]#_g12281_| (gx#core-quote-syntax 'expander-context-id-set!))
  (define |gx[1]#_g12282_| (gx#core-quote-syntax 'expander-context-table-set!))
  (define |gx[1]#_g12283_| (gx#core-quote-syntax 'root-context::t))
  (define |gx[1]#_g12284_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g12285_| (gx#core-quote-syntax 'root-context::t))
  (define |gx[1]#_g12286_| (gx#core-quote-syntax 'make-root-context))
  (define |gx[1]#_g12287_| (gx#core-quote-syntax 'root-context?))
  (define |gx[1]#_g12288_| (gx#core-quote-syntax 'expander-context))
  (define |gx[1]#_g12289_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g12290_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g12291_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g12292_| (gx#core-quote-syntax 'make-phi-context))
  (define |gx[1]#_g12293_| (gx#core-quote-syntax 'phi-context?))
  (define |gx[1]#_g12294_| (gx#core-quote-syntax 'phi-context-super))
  (define |gx[1]#_g12295_| (gx#core-quote-syntax 'phi-context-up))
  (define |gx[1]#_g12296_| (gx#core-quote-syntax 'phi-context-down))
  (define |gx[1]#_g12297_| (gx#core-quote-syntax 'phi-context-super-set!))
  (define |gx[1]#_g12298_| (gx#core-quote-syntax 'phi-context-up-set!))
  (define |gx[1]#_g12299_| (gx#core-quote-syntax 'phi-context-down-set!))
  (define |gx[1]#_g12300_| (gx#core-quote-syntax 'expander-context))
  (define |gx[1]#_g12301_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g12302_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g12303_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g12304_| (gx#core-quote-syntax 'make-top-context))
  (define |gx[1]#_g12305_| (gx#core-quote-syntax 'top-context?))
  (define |gx[1]#_g12306_| (gx#core-quote-syntax 'phi-context))
  (define |gx[1]#_g12307_| (gx#core-quote-syntax 'module-context::t))
  (define |gx[1]#_g12308_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g12309_| (gx#core-quote-syntax 'module-context::t))
  (define |gx[1]#_g12310_| (gx#core-quote-syntax 'make-module-context))
  (define |gx[1]#_g12311_| (gx#core-quote-syntax 'module-context?))
  (define |gx[1]#_g12312_| (gx#core-quote-syntax 'module-context-ns))
  (define |gx[1]#_g12313_| (gx#core-quote-syntax 'module-context-path))
  (define |gx[1]#_g12314_| (gx#core-quote-syntax 'module-context-import))
  (define |gx[1]#_g12315_| (gx#core-quote-syntax 'module-context-export))
  (define |gx[1]#_g12316_| (gx#core-quote-syntax 'module-context-e))
  (define |gx[1]#_g12317_| (gx#core-quote-syntax 'module-context-code))
  (define |gx[1]#_g12318_| (gx#core-quote-syntax 'module-context-ns-set!))
  (define |gx[1]#_g12319_| (gx#core-quote-syntax 'module-context-path-set!))
  (define |gx[1]#_g12320_| (gx#core-quote-syntax 'module-context-import-set!))
  (define |gx[1]#_g12321_| (gx#core-quote-syntax 'module-context-export-set!))
  (define |gx[1]#_g12322_| (gx#core-quote-syntax 'module-context-e-set!))
  (define |gx[1]#_g12323_| (gx#core-quote-syntax 'module-context-code-set!))
  (define |gx[1]#_g12324_| (gx#core-quote-syntax 'top-context))
  (define |gx[1]#_g12325_| (gx#core-quote-syntax 'prelude-context::t))
  (define |gx[1]#_g12326_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g12327_| (gx#core-quote-syntax 'prelude-context::t))
  (define |gx[1]#_g12328_| (gx#core-quote-syntax 'make-prelude-context))
  (define |gx[1]#_g12329_| (gx#core-quote-syntax 'prelude-context?))
  (define |gx[1]#_g12330_| (gx#core-quote-syntax 'prelude-context-path))
  (define |gx[1]#_g12331_| (gx#core-quote-syntax 'prelude-context-import))
  (define |gx[1]#_g12332_| (gx#core-quote-syntax 'prelude-context-e))
  (define |gx[1]#_g12333_| (gx#core-quote-syntax 'prelude-context-path-set!))
  (define |gx[1]#_g12334_| (gx#core-quote-syntax 'prelude-context-import-set!))
  (define |gx[1]#_g12335_| (gx#core-quote-syntax 'prelude-context-e-set!))
  (define |gx[1]#_g12336_| (gx#core-quote-syntax 'top-context))
  (define |gx[1]#_g12337_| (gx#core-quote-syntax 'local-context::t))
  (define |gx[1]#_g12338_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g12339_| (gx#core-quote-syntax 'local-context::t))
  (define |gx[1]#_g12340_| (gx#core-quote-syntax 'make-local-context))
  (define |gx[1]#_g12341_| (gx#core-quote-syntax 'local-context?))
  (define |gx[1]#_g12342_| (gx#core-quote-syntax 'phi-context))
  (define |gx[1]#_g12343_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g12344_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g12345_| (gx#core-quote-syntax 'make-binding))
  (define |gx[1]#_g12346_| (gx#core-quote-syntax 'binding?))
  (define |gx[1]#_g12347_| (gx#core-quote-syntax 'binding-id))
  (define |gx[1]#_g12348_| (gx#core-quote-syntax 'binding-key))
  (define |gx[1]#_g12349_| (gx#core-quote-syntax 'binding-phi))
  (define |gx[1]#_g12350_| (gx#core-quote-syntax 'binding-id-set!))
  (define |gx[1]#_g12351_| (gx#core-quote-syntax 'binding-key-set!))
  (define |gx[1]#_g12352_| (gx#core-quote-syntax 'binding-phi-set!))
  (define |gx[1]#_g12353_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g12354_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g12355_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g12356_| (gx#core-quote-syntax 'make-runtime-binding))
  (define |gx[1]#_g12357_| (gx#core-quote-syntax 'runtime-binding?))
  (define |gx[1]#_g12358_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g12359_| (gx#core-quote-syntax 'local-binding::t))
  (define |gx[1]#_g12360_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g12361_| (gx#core-quote-syntax 'local-binding::t))
  (define |gx[1]#_g12362_| (gx#core-quote-syntax 'make-local-binding))
  (define |gx[1]#_g12363_| (gx#core-quote-syntax 'local-binding?))
  (define |gx[1]#_g12364_| (gx#core-quote-syntax 'runtime-binding))
  (define |gx[1]#_g12365_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g12366_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g12367_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g12368_| (gx#core-quote-syntax 'make-top-binding))
  (define |gx[1]#_g12369_| (gx#core-quote-syntax 'top-binding?))
  (define |gx[1]#_g12370_| (gx#core-quote-syntax 'runtime-binding))
  (define |gx[1]#_g12371_| (gx#core-quote-syntax 'module-binding::t))
  (define |gx[1]#_g12372_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g12373_| (gx#core-quote-syntax 'module-binding::t))
  (define |gx[1]#_g12374_| (gx#core-quote-syntax 'make-module-binding))
  (define |gx[1]#_g12375_| (gx#core-quote-syntax 'module-binding?))
  (define |gx[1]#_g12376_| (gx#core-quote-syntax 'module-binding-context))
  (define |gx[1]#_g12377_| (gx#core-quote-syntax 'module-binding-context-set!))
  (define |gx[1]#_g12378_| (gx#core-quote-syntax 'top-binding))
  (define |gx[1]#_g12379_| (gx#core-quote-syntax 'extern-binding::t))
  (define |gx[1]#_g12380_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g12381_| (gx#core-quote-syntax 'extern-binding::t))
  (define |gx[1]#_g12382_| (gx#core-quote-syntax 'make-extern-binding))
  (define |gx[1]#_g12383_| (gx#core-quote-syntax 'extern-binding?))
  (define |gx[1]#_g12384_| (gx#core-quote-syntax 'top-binding))
  (define |gx[1]#_g12385_| (gx#core-quote-syntax 'syntax-binding::t))
  (define |gx[1]#_g12386_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g12387_| (gx#core-quote-syntax 'syntax-binding::t))
  (define |gx[1]#_g12388_| (gx#core-quote-syntax 'make-syntax-binding))
  (define |gx[1]#_g12389_| (gx#core-quote-syntax 'syntax-binding?))
  (define |gx[1]#_g12390_| (gx#core-quote-syntax 'syntax-binding-e))
  (define |gx[1]#_g12391_| (gx#core-quote-syntax 'syntax-binding-e-set!))
  (define |gx[1]#_g12392_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g12393_| (gx#core-quote-syntax 'import-binding::t))
  (define |gx[1]#_g12394_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g12395_| (gx#core-quote-syntax 'import-binding::t))
  (define |gx[1]#_g12396_| (gx#core-quote-syntax 'make-import-binding))
  (define |gx[1]#_g12397_| (gx#core-quote-syntax 'import-binding?))
  (define |gx[1]#_g12398_| (gx#core-quote-syntax 'import-binding-e))
  (define |gx[1]#_g12399_| (gx#core-quote-syntax 'import-binding-context))
  (define |gx[1]#_g12400_| (gx#core-quote-syntax 'import-binding-weak?))
  (define |gx[1]#_g12401_| (gx#core-quote-syntax 'import-binding-e-set!))
  (define |gx[1]#_g12402_| (gx#core-quote-syntax 'import-binding-context-set!))
  (define |gx[1]#_g12403_| (gx#core-quote-syntax 'import-binding-weak?-set!))
  (define |gx[1]#_g12404_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g12405_| (gx#core-quote-syntax 'alias-binding::t))
  (define |gx[1]#_g12406_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g12407_| (gx#core-quote-syntax 'alias-binding::t))
  (define |gx[1]#_g12408_| (gx#core-quote-syntax 'make-alias-binding))
  (define |gx[1]#_g12409_| (gx#core-quote-syntax 'alias-binding?))
  (define |gx[1]#_g12410_| (gx#core-quote-syntax 'alias-binding-e))
  (define |gx[1]#_g12411_| (gx#core-quote-syntax 'alias-binding-e-set!))
  (define |gx[1]#_g12412_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g12413_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12414_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12415_| (gx#core-quote-syntax 'make-expander))
  (define |gx[1]#_g12416_| (gx#core-quote-syntax 'expander?))
  (define |gx[1]#_g12417_| (gx#core-quote-syntax 'expander-e))
  (define |gx[1]#_g12418_| (gx#core-quote-syntax 'expander-e-set!))
  (define |gx[1]#_g12419_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g12420_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12421_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g12422_| (gx#core-quote-syntax 'make-core-expander))
  (define |gx[1]#_g12423_| (gx#core-quote-syntax 'core-expander?))
  (define |gx[1]#_g12424_| (gx#core-quote-syntax 'core-expander-id))
  (define |gx[1]#_g12425_| (gx#core-quote-syntax 'core-expander-compile-top))
  (define |gx[1]#_g12426_| (gx#core-quote-syntax 'core-expander-id-set!))
  (define |gx[1]#_g12427_|
    (gx#core-quote-syntax 'core-expander-compile-top-set!))
  (define |gx[1]#_g12428_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g12429_| (gx#core-quote-syntax 'expression-form::t))
  (define |gx[1]#_g12430_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g12431_| (gx#core-quote-syntax 'expression-form::t))
  (define |gx[1]#_g12432_| (gx#core-quote-syntax 'make-expression-form))
  (define |gx[1]#_g12433_| (gx#core-quote-syntax 'expression-form?))
  (define |gx[1]#_g12434_| (gx#core-quote-syntax 'core-expander))
  (define |gx[1]#_g12435_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g12436_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g12437_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g12438_| (gx#core-quote-syntax 'make-special-form))
  (define |gx[1]#_g12439_| (gx#core-quote-syntax 'special-form?))
  (define |gx[1]#_g12440_| (gx#core-quote-syntax 'core-expander))
  (define |gx[1]#_g12441_| (gx#core-quote-syntax 'definition-form::t))
  (define |gx[1]#_g12442_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g12443_| (gx#core-quote-syntax 'definition-form::t))
  (define |gx[1]#_g12444_| (gx#core-quote-syntax 'make-definition-form))
  (define |gx[1]#_g12445_| (gx#core-quote-syntax 'definition-form?))
  (define |gx[1]#_g12446_| (gx#core-quote-syntax 'special-form))
  (define |gx[1]#_g12447_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g12448_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g12449_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g12450_| (gx#core-quote-syntax 'make-top-special-form))
  (define |gx[1]#_g12451_| (gx#core-quote-syntax 'top-special-form?))
  (define |gx[1]#_g12452_| (gx#core-quote-syntax 'special-form))
  (define |gx[1]#_g12453_| (gx#core-quote-syntax 'module-special-form::t))
  (define |gx[1]#_g12454_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g12455_| (gx#core-quote-syntax 'module-special-form::t))
  (define |gx[1]#_g12456_| (gx#core-quote-syntax 'make-module-special-form))
  (define |gx[1]#_g12457_| (gx#core-quote-syntax 'module-special-form?))
  (define |gx[1]#_g12458_| (gx#core-quote-syntax 'top-special-form))
  (define |gx[1]#_g12459_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g12460_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12461_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g12462_| (gx#core-quote-syntax 'make-feature-expander))
  (define |gx[1]#_g12463_| (gx#core-quote-syntax 'feature-expander?))
  (define |gx[1]#_g12464_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g12465_| (gx#core-quote-syntax 'private-feature-expander::t))
  (define |gx[1]#_g12466_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g12467_| (gx#core-quote-syntax 'private-feature-expander::t))
  (define |gx[1]#_g12468_|
    (gx#core-quote-syntax 'make-private-feature-expander))
  (define |gx[1]#_g12469_| (gx#core-quote-syntax 'private-feature-expander?))
  (define |gx[1]#_g12470_| (gx#core-quote-syntax 'feature-expander))
  (define |gx[1]#_g12471_| (gx#core-quote-syntax 'reserved-expander::t))
  (define |gx[1]#_g12472_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12473_| (gx#core-quote-syntax 'reserved-expander::t))
  (define |gx[1]#_g12474_| (gx#core-quote-syntax 'make-reserved-expander))
  (define |gx[1]#_g12475_| (gx#core-quote-syntax 'reserved-expander?))
  (define |gx[1]#_g12476_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g12477_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g12478_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g12479_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g12480_| (gx#core-quote-syntax 'make-macro-expander))
  (define |gx[1]#_g12481_| (gx#core-quote-syntax 'macro-expander?))
  (define |gx[1]#_g12482_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g12483_| (gx#core-quote-syntax 'rename-macro-expander::t))
  (define |gx[1]#_g12484_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g12485_| (gx#core-quote-syntax 'rename-macro-expander::t))
  (define |gx[1]#_g12486_| (gx#core-quote-syntax 'make-rename-macro-expander))
  (define |gx[1]#_g12487_| (gx#core-quote-syntax 'rename-macro-expander?))
  (define |gx[1]#_g12488_| (gx#core-quote-syntax 'macro-expander))
  (define |gx[1]#_g12489_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g12490_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g12491_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g12492_| (gx#core-quote-syntax 'make-user-expander))
  (define |gx[1]#_g12493_| (gx#core-quote-syntax 'user-expander?))
  (define |gx[1]#_g12494_| (gx#core-quote-syntax 'user-expander-context))
  (define |gx[1]#_g12495_| (gx#core-quote-syntax 'user-expander-phi))
  (define |gx[1]#_g12496_| (gx#core-quote-syntax 'user-expander-context-set!))
  (define |gx[1]#_g12497_| (gx#core-quote-syntax 'user-expander-phi-set!))
  (define |gx[1]#_g12498_| (gx#core-quote-syntax 'macro-expander))
  (define |gx[1]#_g12499_| (gx#core-quote-syntax 'expander-mark::t))
  (define |gx[1]#_g12500_| (gx#core-quote-syntax 'expander-mark::t))
  (define |gx[1]#_g12501_| (gx#core-quote-syntax 'make-expander-mark))
  (define |gx[1]#_g12502_| (gx#core-quote-syntax 'expander-mark?))
  (define |gx[1]#_g12503_| (gx#core-quote-syntax 'expander-mark-subst))
  (define |gx[1]#_g12504_| (gx#core-quote-syntax 'expander-mark-context))
  (define |gx[1]#_g12505_| (gx#core-quote-syntax 'expander-mark-phi))
  (define |gx[1]#_g12506_| (gx#core-quote-syntax 'expander-mark-trace))
  (define |gx[1]#_g12507_| (gx#core-quote-syntax 'expander-mark-subst-set!))
  (define |gx[1]#_g12508_| (gx#core-quote-syntax 'expander-mark-context-set!))
  (define |gx[1]#_g12509_| (gx#core-quote-syntax 'expander-mark-phi-set!))
  (define |gx[1]#_g12510_| (gx#core-quote-syntax 'expander-mark-trace-set!))
  (define |gx[1]#_g12511_| (gx#core-quote-syntax 'syntax-error::t))
  (define |gx[1]#_g12512_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g12513_| (gx#core-quote-syntax 'syntax-error::t))
  (define |gx[1]#_g12514_| (gx#core-quote-syntax 'make-syntax-error))
  (define |gx[1]#_g12515_| (gx#core-quote-syntax 'syntax-error?))
  (define |gx[1]#_g12516_| (gx#core-quote-syntax 'syntax-error-context))
  (define |gx[1]#_g12517_| (gx#core-quote-syntax 'syntax-error-marks))
  (define |gx[1]#_g12518_| (gx#core-quote-syntax 'syntax-error-phi))
  (define |gx[1]#_g12519_| (gx#core-quote-syntax 'syntax-error-context-set!))
  (define |gx[1]#_g12520_| (gx#core-quote-syntax 'syntax-error-marks-set!))
  (define |gx[1]#_g12521_| (gx#core-quote-syntax 'syntax-error-phi-set!))
  (define |gx[1]#_g12522_| (gx#core-quote-syntax '<error>))
  (begin
    (define |gx[:0:]#expander-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12275_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12276_|
                   (cons |gx[1]#_g12277_|
                         (cons |gx[1]#_g12278_|
                               (cons (cons |gx[1]#_g12279_|
                                           (cons |gx[1]#_g12280_| '()))
                                     (cons (cons |gx[1]#_g12281_|
                                                 (cons |gx[1]#_g12282_| '()))
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
       |gx[1]#_g12283_|
       'expander-identifiers:
       (cons |gx[1]#_g12284_|
             (cons |gx[1]#_g12285_|
                   (cons |gx[1]#_g12286_|
                         (cons |gx[1]#_g12287_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#root-context::t
        |gx[1]#_g12288_|
        'root-context
        '#f
        '()
        '())))
    (define |gx[:0:]#phi-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12289_|
       'expander-identifiers:
       (cons |gx[1]#_g12290_|
             (cons |gx[1]#_g12291_|
                   (cons |gx[1]#_g12292_|
                         (cons |gx[1]#_g12293_|
                               (cons (cons |gx[1]#_g12294_|
                                           (cons |gx[1]#_g12295_|
                                                 (cons |gx[1]#_g12296_| '())))
                                     (cons (cons |gx[1]#_g12297_|
                                                 (cons |gx[1]#_g12298_|
                                                       (cons |gx[1]#_g12299_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#context-phi::t
        |gx[1]#_g12300_|
        'phi-context
        '#f
        '()
        '(super up down))))
    (define |gx[:0:]#top-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12301_|
       'expander-identifiers:
       (cons |gx[1]#_g12302_|
             (cons |gx[1]#_g12303_|
                   (cons |gx[1]#_g12304_|
                         (cons |gx[1]#_g12305_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-context::t
        |gx[1]#_g12306_|
        'top-context
        '#f
        '()
        '())))
    (define |gx[:0:]#module-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12307_|
       'expander-identifiers:
       (cons |gx[1]#_g12308_|
             (cons |gx[1]#_g12309_|
                   (cons |gx[1]#_g12310_|
                         (cons |gx[1]#_g12311_|
                               (cons (cons |gx[1]#_g12312_|
                                           (cons |gx[1]#_g12313_|
                                                 (cons |gx[1]#_g12314_|
                                                       (cons |gx[1]#_g12315_|
                                                             (cons |gx[1]#_g12316_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g12317_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g12318_|
                                                 (cons |gx[1]#_g12319_|
                                                       (cons |gx[1]#_g12320_|
                                                             (cons |gx[1]#_g12321_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g12322_|
                                 (cons |gx[1]#_g12323_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-context::t
        |gx[1]#_g12324_|
        'module-context
        '#f
        '()
        '(ns path import export e code))))
    (define |gx[:0:]#prelude-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12325_|
       'expander-identifiers:
       (cons |gx[1]#_g12326_|
             (cons |gx[1]#_g12327_|
                   (cons |gx[1]#_g12328_|
                         (cons |gx[1]#_g12329_|
                               (cons (cons |gx[1]#_g12330_|
                                           (cons |gx[1]#_g12331_|
                                                 (cons |gx[1]#_g12332_| '())))
                                     (cons (cons |gx[1]#_g12333_|
                                                 (cons |gx[1]#_g12334_|
                                                       (cons |gx[1]#_g12335_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#prelude-context::t
        |gx[1]#_g12336_|
        'prelude-context
        '#f
        '()
        '(path import e))))
    (define |gx[:0:]#local-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12337_|
       'expander-identifiers:
       (cons |gx[1]#_g12338_|
             (cons |gx[1]#_g12339_|
                   (cons |gx[1]#_g12340_|
                         (cons |gx[1]#_g12341_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-context::t
        |gx[1]#_g12342_|
        'local-context
        '#f
        '()
        '())))
    (define |gx[:0:]#binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12343_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12344_|
                   (cons |gx[1]#_g12345_|
                         (cons |gx[1]#_g12346_|
                               (cons (cons |gx[1]#_g12347_|
                                           (cons |gx[1]#_g12348_|
                                                 (cons |gx[1]#_g12349_| '())))
                                     (cons (cons |gx[1]#_g12350_|
                                                 (cons |gx[1]#_g12351_|
                                                       (cons |gx[1]#_g12352_|
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
       |gx[1]#_g12353_|
       'expander-identifiers:
       (cons |gx[1]#_g12354_|
             (cons |gx[1]#_g12355_|
                   (cons |gx[1]#_g12356_|
                         (cons |gx[1]#_g12357_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#runtime-binding::t
        |gx[1]#_g12358_|
        'runtime-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#local-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12359_|
       'expander-identifiers:
       (cons |gx[1]#_g12360_|
             (cons |gx[1]#_g12361_|
                   (cons |gx[1]#_g12362_|
                         (cons |gx[1]#_g12363_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-binding::t
        |gx[1]#_g12364_|
        'local-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#top-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12365_|
       'expander-identifiers:
       (cons |gx[1]#_g12366_|
             (cons |gx[1]#_g12367_|
                   (cons |gx[1]#_g12368_|
                         (cons |gx[1]#_g12369_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-binding::t
        |gx[1]#_g12370_|
        'top-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#module-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12371_|
       'expander-identifiers:
       (cons |gx[1]#_g12372_|
             (cons |gx[1]#_g12373_|
                   (cons |gx[1]#_g12374_|
                         (cons |gx[1]#_g12375_|
                               (cons (cons |gx[1]#_g12376_| '())
                                     (cons (cons |gx[1]#_g12377_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-binding::t
        |gx[1]#_g12378_|
        'module-binding
        '#f
        '()
        '(context))))
    (define |gx[:0:]#extern-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12379_|
       'expander-identifiers:
       (cons |gx[1]#_g12380_|
             (cons |gx[1]#_g12381_|
                   (cons |gx[1]#_g12382_|
                         (cons |gx[1]#_g12383_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#extern-binding::t
        |gx[1]#_g12384_|
        'extern-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#syntax-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12385_|
       'expander-identifiers:
       (cons |gx[1]#_g12386_|
             (cons |gx[1]#_g12387_|
                   (cons |gx[1]#_g12388_|
                         (cons |gx[1]#_g12389_|
                               (cons (cons |gx[1]#_g12390_| '())
                                     (cons (cons |gx[1]#_g12391_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-binding::t
        |gx[1]#_g12392_|
        'syntax-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#import-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12393_|
       'expander-identifiers:
       (cons |gx[1]#_g12394_|
             (cons |gx[1]#_g12395_|
                   (cons |gx[1]#_g12396_|
                         (cons |gx[1]#_g12397_|
                               (cons (cons |gx[1]#_g12398_|
                                           (cons |gx[1]#_g12399_|
                                                 (cons |gx[1]#_g12400_| '())))
                                     (cons (cons |gx[1]#_g12401_|
                                                 (cons |gx[1]#_g12402_|
                                                       (cons |gx[1]#_g12403_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-binding::t
        |gx[1]#_g12404_|
        'import-binding
        '#f
        '((final: . #t))
        '(e context weak?))))
    (define |gx[:0:]#alias-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12405_|
       'expander-identifiers:
       (cons |gx[1]#_g12406_|
             (cons |gx[1]#_g12407_|
                   (cons |gx[1]#_g12408_|
                         (cons |gx[1]#_g12409_|
                               (cons (cons |gx[1]#_g12410_| '())
                                     (cons (cons |gx[1]#_g12411_| '())
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#alias-binding::t
        |gx[1]#_g12412_|
        'alias-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12413_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12414_|
                   (cons |gx[1]#_g12415_|
                         (cons |gx[1]#_g12416_|
                               (cons (cons |gx[1]#_g12417_| '())
                                     (cons (cons |gx[1]#_g12418_| '())
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
       |gx[1]#_g12419_|
       'expander-identifiers:
       (cons |gx[1]#_g12420_|
             (cons |gx[1]#_g12421_|
                   (cons |gx[1]#_g12422_|
                         (cons |gx[1]#_g12423_|
                               (cons (cons |gx[1]#_g12424_|
                                           (cons |gx[1]#_g12425_| '()))
                                     (cons (cons |gx[1]#_g12426_|
                                                 (cons |gx[1]#_g12427_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-expander::t
        |gx[1]#_g12428_|
        'core-expander
        '#f
        '()
        '(id compile-top))))
    (define |gx[:0:]#expression-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12429_|
       'expander-identifiers:
       (cons |gx[1]#_g12430_|
             (cons |gx[1]#_g12431_|
                   (cons |gx[1]#_g12432_|
                         (cons |gx[1]#_g12433_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expression-form::t
        |gx[1]#_g12434_|
        'expression-form
        '#f
        '()
        '())))
    (define |gx[:0:]#special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12435_|
       'expander-identifiers:
       (cons |gx[1]#_g12436_|
             (cons |gx[1]#_g12437_|
                   (cons |gx[1]#_g12438_|
                         (cons |gx[1]#_g12439_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#special-form::t
        |gx[1]#_g12440_|
        'special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#definition-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12441_|
       'expander-identifiers:
       (cons |gx[1]#_g12442_|
             (cons |gx[1]#_g12443_|
                   (cons |gx[1]#_g12444_|
                         (cons |gx[1]#_g12445_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#definition-form::t
        |gx[1]#_g12446_|
        'definition-form
        '#f
        '()
        '())))
    (define |gx[:0:]#top-special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12447_|
       'expander-identifiers:
       (cons |gx[1]#_g12448_|
             (cons |gx[1]#_g12449_|
                   (cons |gx[1]#_g12450_|
                         (cons |gx[1]#_g12451_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-special-form::t
        |gx[1]#_g12452_|
        'top-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#module-special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12453_|
       'expander-identifiers:
       (cons |gx[1]#_g12454_|
             (cons |gx[1]#_g12455_|
                   (cons |gx[1]#_g12456_|
                         (cons |gx[1]#_g12457_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-special-form::t
        |gx[1]#_g12458_|
        'module-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#feature-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12459_|
       'expander-identifiers:
       (cons |gx[1]#_g12460_|
             (cons |gx[1]#_g12461_|
                   (cons |gx[1]#_g12462_|
                         (cons |gx[1]#_g12463_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#feature-expander::t
        |gx[1]#_g12464_|
        'feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#private-feature-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12465_|
       'expander-identifiers:
       (cons |gx[1]#_g12466_|
             (cons |gx[1]#_g12467_|
                   (cons |gx[1]#_g12468_|
                         (cons |gx[1]#_g12469_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#private-feature-expander::t
        |gx[1]#_g12470_|
        'private-feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#reserved-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12471_|
       'expander-identifiers:
       (cons |gx[1]#_g12472_|
             (cons |gx[1]#_g12473_|
                   (cons |gx[1]#_g12474_|
                         (cons |gx[1]#_g12475_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#reserved-expander::t
        |gx[1]#_g12476_|
        'reserved-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#macro-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12477_|
       'expander-identifiers:
       (cons |gx[1]#_g12478_|
             (cons |gx[1]#_g12479_|
                   (cons |gx[1]#_g12480_|
                         (cons |gx[1]#_g12481_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-macro::t
        |gx[1]#_g12482_|
        'macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#rename-macro-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12483_|
       'expander-identifiers:
       (cons |gx[1]#_g12484_|
             (cons |gx[1]#_g12485_|
                   (cons |gx[1]#_g12486_|
                         (cons |gx[1]#_g12487_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#rename-macro-expander::t
        |gx[1]#_g12488_|
        'rename-macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#user-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12489_|
       'expander-identifiers:
       (cons |gx[1]#_g12490_|
             (cons |gx[1]#_g12491_|
                   (cons |gx[1]#_g12492_|
                         (cons |gx[1]#_g12493_|
                               (cons (cons |gx[1]#_g12494_|
                                           (cons |gx[1]#_g12495_| '()))
                                     (cons (cons |gx[1]#_g12496_|
                                                 (cons |gx[1]#_g12497_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#macro-expander::t
        |gx[1]#_g12498_|
        'user-expander
        '#f
        '()
        '(context phi))))
    (define |gx[:0:]#expander-mark|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g12499_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g12500_|
                   (cons |gx[1]#_g12501_|
                         (cons |gx[1]#_g12502_|
                               (cons (cons |gx[1]#_g12503_|
                                           (cons |gx[1]#_g12504_|
                                                 (cons |gx[1]#_g12505_|
                                                       (cons |gx[1]#_g12506_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g12507_|
                                                 (cons |gx[1]#_g12508_|
                                                       (cons |gx[1]#_g12509_|
                                                             (cons |gx[1]#_g12510_|
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
       |gx[1]#_g12511_|
       'expander-identifiers:
       (cons |gx[1]#_g12512_|
             (cons |gx[1]#_g12513_|
                   (cons |gx[1]#_g12514_|
                         (cons |gx[1]#_g12515_|
                               (cons (cons |gx[1]#_g12516_|
                                           (cons |gx[1]#_g12517_|
                                                 (cons |gx[1]#_g12518_| '())))
                                     (cons (cons |gx[1]#_g12519_|
                                                 (cons |gx[1]#_g12520_|
                                                       (cons |gx[1]#_g12521_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-error::t
        |gx[1]#_g12522_|
        'syntax-error
        '#f
        '()
        '(context marks phi))))))
