(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g5292_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g5293_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g5294_| (gx#core-quote-syntax 'make-expander-context))
  (define |gx[1]#_g5295_| (gx#core-quote-syntax 'expander-context?))
  (define |gx[1]#_g5296_| (gx#core-quote-syntax 'expander-context-id))
  (define |gx[1]#_g5297_| (gx#core-quote-syntax 'expander-context-table))
  (define |gx[1]#_g5298_| (gx#core-quote-syntax 'expander-context-id-set!))
  (define |gx[1]#_g5299_| (gx#core-quote-syntax 'expander-context-table-set!))
  (define |gx[1]#_g5300_| (gx#core-quote-syntax 'root-context::t))
  (define |gx[1]#_g5301_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g5302_| (gx#core-quote-syntax 'root-context::t))
  (define |gx[1]#_g5303_| (gx#core-quote-syntax 'make-root-context))
  (define |gx[1]#_g5304_| (gx#core-quote-syntax 'root-context?))
  (define |gx[1]#_g5305_| (gx#core-quote-syntax 'expander-context))
  (define |gx[1]#_g5306_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g5307_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g5308_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g5309_| (gx#core-quote-syntax 'make-phi-context))
  (define |gx[1]#_g5310_| (gx#core-quote-syntax 'phi-context?))
  (define |gx[1]#_g5311_| (gx#core-quote-syntax 'phi-context-super))
  (define |gx[1]#_g5312_| (gx#core-quote-syntax 'phi-context-up))
  (define |gx[1]#_g5313_| (gx#core-quote-syntax 'phi-context-down))
  (define |gx[1]#_g5314_| (gx#core-quote-syntax 'phi-context-super-set!))
  (define |gx[1]#_g5315_| (gx#core-quote-syntax 'phi-context-up-set!))
  (define |gx[1]#_g5316_| (gx#core-quote-syntax 'phi-context-down-set!))
  (define |gx[1]#_g5317_| (gx#core-quote-syntax 'expander-context))
  (define |gx[1]#_g5318_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g5319_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g5320_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g5321_| (gx#core-quote-syntax 'make-top-context))
  (define |gx[1]#_g5322_| (gx#core-quote-syntax 'top-context?))
  (define |gx[1]#_g5323_| (gx#core-quote-syntax 'phi-context))
  (define |gx[1]#_g5324_| (gx#core-quote-syntax 'module-context::t))
  (define |gx[1]#_g5325_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g5326_| (gx#core-quote-syntax 'module-context::t))
  (define |gx[1]#_g5327_| (gx#core-quote-syntax 'make-module-context))
  (define |gx[1]#_g5328_| (gx#core-quote-syntax 'module-context?))
  (define |gx[1]#_g5329_| (gx#core-quote-syntax 'module-context-ns))
  (define |gx[1]#_g5330_| (gx#core-quote-syntax 'module-context-path))
  (define |gx[1]#_g5331_| (gx#core-quote-syntax 'module-context-import))
  (define |gx[1]#_g5332_| (gx#core-quote-syntax 'module-context-export))
  (define |gx[1]#_g5333_| (gx#core-quote-syntax 'module-context-e))
  (define |gx[1]#_g5334_| (gx#core-quote-syntax 'module-context-code))
  (define |gx[1]#_g5335_| (gx#core-quote-syntax 'module-context-ns-set!))
  (define |gx[1]#_g5336_| (gx#core-quote-syntax 'module-context-path-set!))
  (define |gx[1]#_g5337_| (gx#core-quote-syntax 'module-context-import-set!))
  (define |gx[1]#_g5338_| (gx#core-quote-syntax 'module-context-export-set!))
  (define |gx[1]#_g5339_| (gx#core-quote-syntax 'module-context-e-set!))
  (define |gx[1]#_g5340_| (gx#core-quote-syntax 'module-context-code-set!))
  (define |gx[1]#_g5341_| (gx#core-quote-syntax 'top-context))
  (define |gx[1]#_g5342_| (gx#core-quote-syntax 'prelude-context::t))
  (define |gx[1]#_g5343_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g5344_| (gx#core-quote-syntax 'prelude-context::t))
  (define |gx[1]#_g5345_| (gx#core-quote-syntax 'make-prelude-context))
  (define |gx[1]#_g5346_| (gx#core-quote-syntax 'prelude-context?))
  (define |gx[1]#_g5347_| (gx#core-quote-syntax 'prelude-context-path))
  (define |gx[1]#_g5348_| (gx#core-quote-syntax 'prelude-context-import))
  (define |gx[1]#_g5349_| (gx#core-quote-syntax 'prelude-context-e))
  (define |gx[1]#_g5350_| (gx#core-quote-syntax 'prelude-context-path-set!))
  (define |gx[1]#_g5351_| (gx#core-quote-syntax 'prelude-context-import-set!))
  (define |gx[1]#_g5352_| (gx#core-quote-syntax 'prelude-context-e-set!))
  (define |gx[1]#_g5353_| (gx#core-quote-syntax 'top-context))
  (define |gx[1]#_g5354_| (gx#core-quote-syntax 'local-context::t))
  (define |gx[1]#_g5355_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g5356_| (gx#core-quote-syntax 'local-context::t))
  (define |gx[1]#_g5357_| (gx#core-quote-syntax 'make-local-context))
  (define |gx[1]#_g5358_| (gx#core-quote-syntax 'local-context?))
  (define |gx[1]#_g5359_| (gx#core-quote-syntax 'phi-context))
  (define |gx[1]#_g5360_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g5361_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g5362_| (gx#core-quote-syntax 'make-binding))
  (define |gx[1]#_g5363_| (gx#core-quote-syntax 'binding?))
  (define |gx[1]#_g5364_| (gx#core-quote-syntax 'binding-id))
  (define |gx[1]#_g5365_| (gx#core-quote-syntax 'binding-key))
  (define |gx[1]#_g5366_| (gx#core-quote-syntax 'binding-phi))
  (define |gx[1]#_g5367_| (gx#core-quote-syntax 'binding-id-set!))
  (define |gx[1]#_g5368_| (gx#core-quote-syntax 'binding-key-set!))
  (define |gx[1]#_g5369_| (gx#core-quote-syntax 'binding-phi-set!))
  (define |gx[1]#_g5370_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g5371_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g5372_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g5373_| (gx#core-quote-syntax 'make-runtime-binding))
  (define |gx[1]#_g5374_| (gx#core-quote-syntax 'runtime-binding?))
  (define |gx[1]#_g5375_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g5376_| (gx#core-quote-syntax 'local-binding::t))
  (define |gx[1]#_g5377_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g5378_| (gx#core-quote-syntax 'local-binding::t))
  (define |gx[1]#_g5379_| (gx#core-quote-syntax 'make-local-binding))
  (define |gx[1]#_g5380_| (gx#core-quote-syntax 'local-binding?))
  (define |gx[1]#_g5381_| (gx#core-quote-syntax 'runtime-binding))
  (define |gx[1]#_g5382_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g5383_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g5384_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g5385_| (gx#core-quote-syntax 'make-top-binding))
  (define |gx[1]#_g5386_| (gx#core-quote-syntax 'top-binding?))
  (define |gx[1]#_g5387_| (gx#core-quote-syntax 'runtime-binding))
  (define |gx[1]#_g5388_| (gx#core-quote-syntax 'module-binding::t))
  (define |gx[1]#_g5389_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g5390_| (gx#core-quote-syntax 'module-binding::t))
  (define |gx[1]#_g5391_| (gx#core-quote-syntax 'make-module-binding))
  (define |gx[1]#_g5392_| (gx#core-quote-syntax 'module-binding?))
  (define |gx[1]#_g5393_| (gx#core-quote-syntax 'module-binding-context))
  (define |gx[1]#_g5394_| (gx#core-quote-syntax 'module-binding-context-set!))
  (define |gx[1]#_g5395_| (gx#core-quote-syntax 'top-binding))
  (define |gx[1]#_g5396_| (gx#core-quote-syntax 'extern-binding::t))
  (define |gx[1]#_g5397_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g5398_| (gx#core-quote-syntax 'extern-binding::t))
  (define |gx[1]#_g5399_| (gx#core-quote-syntax 'make-extern-binding))
  (define |gx[1]#_g5400_| (gx#core-quote-syntax 'extern-binding?))
  (define |gx[1]#_g5401_| (gx#core-quote-syntax 'top-binding))
  (define |gx[1]#_g5402_| (gx#core-quote-syntax 'syntax-binding::t))
  (define |gx[1]#_g5403_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g5404_| (gx#core-quote-syntax 'syntax-binding::t))
  (define |gx[1]#_g5405_| (gx#core-quote-syntax 'make-syntax-binding))
  (define |gx[1]#_g5406_| (gx#core-quote-syntax 'syntax-binding?))
  (define |gx[1]#_g5407_| (gx#core-quote-syntax 'syntax-binding-e))
  (define |gx[1]#_g5408_| (gx#core-quote-syntax 'syntax-binding-e-set!))
  (define |gx[1]#_g5409_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g5410_| (gx#core-quote-syntax 'import-binding::t))
  (define |gx[1]#_g5411_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g5412_| (gx#core-quote-syntax 'import-binding::t))
  (define |gx[1]#_g5413_| (gx#core-quote-syntax 'make-import-binding))
  (define |gx[1]#_g5414_| (gx#core-quote-syntax 'import-binding?))
  (define |gx[1]#_g5415_| (gx#core-quote-syntax 'import-binding-e))
  (define |gx[1]#_g5416_| (gx#core-quote-syntax 'import-binding-context))
  (define |gx[1]#_g5417_| (gx#core-quote-syntax 'import-binding-weak?))
  (define |gx[1]#_g5418_| (gx#core-quote-syntax 'import-binding-e-set!))
  (define |gx[1]#_g5419_| (gx#core-quote-syntax 'import-binding-context-set!))
  (define |gx[1]#_g5420_| (gx#core-quote-syntax 'import-binding-weak?-set!))
  (define |gx[1]#_g5421_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g5422_| (gx#core-quote-syntax 'alias-binding::t))
  (define |gx[1]#_g5423_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g5424_| (gx#core-quote-syntax 'alias-binding::t))
  (define |gx[1]#_g5425_| (gx#core-quote-syntax 'make-alias-binding))
  (define |gx[1]#_g5426_| (gx#core-quote-syntax 'alias-binding?))
  (define |gx[1]#_g5427_| (gx#core-quote-syntax 'alias-binding-e))
  (define |gx[1]#_g5428_| (gx#core-quote-syntax 'alias-binding-e-set!))
  (define |gx[1]#_g5429_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g5430_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g5431_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g5432_| (gx#core-quote-syntax 'make-expander))
  (define |gx[1]#_g5433_| (gx#core-quote-syntax 'expander?))
  (define |gx[1]#_g5434_| (gx#core-quote-syntax 'expander-e))
  (define |gx[1]#_g5435_| (gx#core-quote-syntax 'expander-e-set!))
  (define |gx[1]#_g5436_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g5437_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g5438_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g5439_| (gx#core-quote-syntax 'make-core-expander))
  (define |gx[1]#_g5440_| (gx#core-quote-syntax 'core-expander?))
  (define |gx[1]#_g5441_| (gx#core-quote-syntax 'core-expander-id))
  (define |gx[1]#_g5442_| (gx#core-quote-syntax 'core-expander-compile-top))
  (define |gx[1]#_g5443_| (gx#core-quote-syntax 'core-expander-id-set!))
  (define |gx[1]#_g5444_|
    (gx#core-quote-syntax 'core-expander-compile-top-set!))
  (define |gx[1]#_g5445_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g5446_| (gx#core-quote-syntax 'expression-form::t))
  (define |gx[1]#_g5447_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g5448_| (gx#core-quote-syntax 'expression-form::t))
  (define |gx[1]#_g5449_| (gx#core-quote-syntax 'make-expression-form))
  (define |gx[1]#_g5450_| (gx#core-quote-syntax 'expression-form?))
  (define |gx[1]#_g5451_| (gx#core-quote-syntax 'core-expander))
  (define |gx[1]#_g5452_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g5453_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g5454_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g5455_| (gx#core-quote-syntax 'make-special-form))
  (define |gx[1]#_g5456_| (gx#core-quote-syntax 'special-form?))
  (define |gx[1]#_g5457_| (gx#core-quote-syntax 'core-expander))
  (define |gx[1]#_g5458_| (gx#core-quote-syntax 'definition-form::t))
  (define |gx[1]#_g5459_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g5460_| (gx#core-quote-syntax 'definition-form::t))
  (define |gx[1]#_g5461_| (gx#core-quote-syntax 'make-definition-form))
  (define |gx[1]#_g5462_| (gx#core-quote-syntax 'definition-form?))
  (define |gx[1]#_g5463_| (gx#core-quote-syntax 'special-form))
  (define |gx[1]#_g5464_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g5465_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g5466_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g5467_| (gx#core-quote-syntax 'make-top-special-form))
  (define |gx[1]#_g5468_| (gx#core-quote-syntax 'top-special-form?))
  (define |gx[1]#_g5469_| (gx#core-quote-syntax 'special-form))
  (define |gx[1]#_g5470_| (gx#core-quote-syntax 'module-special-form::t))
  (define |gx[1]#_g5471_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g5472_| (gx#core-quote-syntax 'module-special-form::t))
  (define |gx[1]#_g5473_| (gx#core-quote-syntax 'make-module-special-form))
  (define |gx[1]#_g5474_| (gx#core-quote-syntax 'module-special-form?))
  (define |gx[1]#_g5475_| (gx#core-quote-syntax 'top-special-form))
  (define |gx[1]#_g5476_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g5477_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g5478_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g5479_| (gx#core-quote-syntax 'make-feature-expander))
  (define |gx[1]#_g5480_| (gx#core-quote-syntax 'feature-expander?))
  (define |gx[1]#_g5481_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g5482_| (gx#core-quote-syntax 'private-feature-expander::t))
  (define |gx[1]#_g5483_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g5484_| (gx#core-quote-syntax 'private-feature-expander::t))
  (define |gx[1]#_g5485_|
    (gx#core-quote-syntax 'make-private-feature-expander))
  (define |gx[1]#_g5486_| (gx#core-quote-syntax 'private-feature-expander?))
  (define |gx[1]#_g5487_| (gx#core-quote-syntax 'feature-expander))
  (define |gx[1]#_g5488_| (gx#core-quote-syntax 'reserved-expander::t))
  (define |gx[1]#_g5489_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g5490_| (gx#core-quote-syntax 'reserved-expander::t))
  (define |gx[1]#_g5491_| (gx#core-quote-syntax 'make-reserved-expander))
  (define |gx[1]#_g5492_| (gx#core-quote-syntax 'reserved-expander?))
  (define |gx[1]#_g5493_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g5494_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g5495_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g5496_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g5497_| (gx#core-quote-syntax 'make-macro-expander))
  (define |gx[1]#_g5498_| (gx#core-quote-syntax 'macro-expander?))
  (define |gx[1]#_g5499_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g5500_| (gx#core-quote-syntax 'rename-macro-expander::t))
  (define |gx[1]#_g5501_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g5502_| (gx#core-quote-syntax 'rename-macro-expander::t))
  (define |gx[1]#_g5503_| (gx#core-quote-syntax 'make-rename-macro-expander))
  (define |gx[1]#_g5504_| (gx#core-quote-syntax 'rename-macro-expander?))
  (define |gx[1]#_g5505_| (gx#core-quote-syntax 'macro-expander))
  (define |gx[1]#_g5506_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g5507_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g5508_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g5509_| (gx#core-quote-syntax 'make-user-expander))
  (define |gx[1]#_g5510_| (gx#core-quote-syntax 'user-expander?))
  (define |gx[1]#_g5511_| (gx#core-quote-syntax 'user-expander-context))
  (define |gx[1]#_g5512_| (gx#core-quote-syntax 'user-expander-phi))
  (define |gx[1]#_g5513_| (gx#core-quote-syntax 'user-expander-context-set!))
  (define |gx[1]#_g5514_| (gx#core-quote-syntax 'user-expander-phi-set!))
  (define |gx[1]#_g5515_| (gx#core-quote-syntax 'macro-expander))
  (define |gx[1]#_g5516_| (gx#core-quote-syntax 'expander-mark::t))
  (define |gx[1]#_g5517_| (gx#core-quote-syntax 'expander-mark::t))
  (define |gx[1]#_g5518_| (gx#core-quote-syntax 'make-expander-mark))
  (define |gx[1]#_g5519_| (gx#core-quote-syntax 'expander-mark?))
  (define |gx[1]#_g5520_| (gx#core-quote-syntax 'expander-mark-subst))
  (define |gx[1]#_g5521_| (gx#core-quote-syntax 'expander-mark-context))
  (define |gx[1]#_g5522_| (gx#core-quote-syntax 'expander-mark-phi))
  (define |gx[1]#_g5523_| (gx#core-quote-syntax 'expander-mark-trace))
  (define |gx[1]#_g5524_| (gx#core-quote-syntax 'expander-mark-subst-set!))
  (define |gx[1]#_g5525_| (gx#core-quote-syntax 'expander-mark-context-set!))
  (define |gx[1]#_g5526_| (gx#core-quote-syntax 'expander-mark-phi-set!))
  (define |gx[1]#_g5527_| (gx#core-quote-syntax 'expander-mark-trace-set!))
  (define |gx[1]#_g5528_| (gx#core-quote-syntax 'syntax-error::t))
  (define |gx[1]#_g5529_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g5530_| (gx#core-quote-syntax 'syntax-error::t))
  (define |gx[1]#_g5531_| (gx#core-quote-syntax 'make-syntax-error))
  (define |gx[1]#_g5532_| (gx#core-quote-syntax 'syntax-error?))
  (define |gx[1]#_g5533_| (gx#core-quote-syntax 'syntax-error-context))
  (define |gx[1]#_g5534_| (gx#core-quote-syntax 'syntax-error-marks))
  (define |gx[1]#_g5535_| (gx#core-quote-syntax 'syntax-error-phi))
  (define |gx[1]#_g5536_| (gx#core-quote-syntax 'syntax-error-context-set!))
  (define |gx[1]#_g5537_| (gx#core-quote-syntax 'syntax-error-marks-set!))
  (define |gx[1]#_g5538_| (gx#core-quote-syntax 'syntax-error-phi-set!))
  (define |gx[1]#_g5539_| (gx#core-quote-syntax '<error>))
  (begin
    (define |gx[:0:]#expander-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5292_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g5293_|
                   (cons |gx[1]#_g5294_|
                         (cons |gx[1]#_g5295_|
                               (cons (cons |gx[1]#_g5296_|
                                           (cons |gx[1]#_g5297_| '()))
                                     (cons (cons |gx[1]#_g5298_|
                                                 (cons |gx[1]#_g5299_| '()))
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
       |gx[1]#_g5300_|
       'expander-identifiers:
       (cons |gx[1]#_g5301_|
             (cons |gx[1]#_g5302_|
                   (cons |gx[1]#_g5303_|
                         (cons |gx[1]#_g5304_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#root-context::t
        |gx[1]#_g5305_|
        'root-context
        '#f
        '()
        '())))
    (define |gx[:0:]#phi-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5306_|
       'expander-identifiers:
       (cons |gx[1]#_g5307_|
             (cons |gx[1]#_g5308_|
                   (cons |gx[1]#_g5309_|
                         (cons |gx[1]#_g5310_|
                               (cons (cons |gx[1]#_g5311_|
                                           (cons |gx[1]#_g5312_|
                                                 (cons |gx[1]#_g5313_| '())))
                                     (cons (cons |gx[1]#_g5314_|
                                                 (cons |gx[1]#_g5315_|
                                                       (cons |gx[1]#_g5316_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#context-phi::t
        |gx[1]#_g5317_|
        'phi-context
        '#f
        '()
        '(super up down))))
    (define |gx[:0:]#top-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5318_|
       'expander-identifiers:
       (cons |gx[1]#_g5319_|
             (cons |gx[1]#_g5320_|
                   (cons |gx[1]#_g5321_|
                         (cons |gx[1]#_g5322_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-context::t
        |gx[1]#_g5323_|
        'top-context
        '#f
        '()
        '())))
    (define |gx[:0:]#module-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5324_|
       'expander-identifiers:
       (cons |gx[1]#_g5325_|
             (cons |gx[1]#_g5326_|
                   (cons |gx[1]#_g5327_|
                         (cons |gx[1]#_g5328_|
                               (cons (cons |gx[1]#_g5329_|
                                           (cons |gx[1]#_g5330_|
                                                 (cons |gx[1]#_g5331_|
                                                       (cons |gx[1]#_g5332_|
                                                             (cons |gx[1]#_g5333_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g5334_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g5335_|
                                                 (cons |gx[1]#_g5336_|
                                                       (cons |gx[1]#_g5337_|
                                                             (cons |gx[1]#_g5338_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g5339_|
                                 (cons |gx[1]#_g5340_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-context::t
        |gx[1]#_g5341_|
        'module-context
        '#f
        '()
        '(ns path import export e code))))
    (define |gx[:0:]#prelude-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5342_|
       'expander-identifiers:
       (cons |gx[1]#_g5343_|
             (cons |gx[1]#_g5344_|
                   (cons |gx[1]#_g5345_|
                         (cons |gx[1]#_g5346_|
                               (cons (cons |gx[1]#_g5347_|
                                           (cons |gx[1]#_g5348_|
                                                 (cons |gx[1]#_g5349_| '())))
                                     (cons (cons |gx[1]#_g5350_|
                                                 (cons |gx[1]#_g5351_|
                                                       (cons |gx[1]#_g5352_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#prelude-context::t
        |gx[1]#_g5353_|
        'prelude-context
        '#f
        '()
        '(path import e))))
    (define |gx[:0:]#local-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5354_|
       'expander-identifiers:
       (cons |gx[1]#_g5355_|
             (cons |gx[1]#_g5356_|
                   (cons |gx[1]#_g5357_|
                         (cons |gx[1]#_g5358_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-context::t
        |gx[1]#_g5359_|
        'local-context
        '#f
        '()
        '())))
    (define |gx[:0:]#binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5360_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g5361_|
                   (cons |gx[1]#_g5362_|
                         (cons |gx[1]#_g5363_|
                               (cons (cons |gx[1]#_g5364_|
                                           (cons |gx[1]#_g5365_|
                                                 (cons |gx[1]#_g5366_| '())))
                                     (cons (cons |gx[1]#_g5367_|
                                                 (cons |gx[1]#_g5368_|
                                                       (cons |gx[1]#_g5369_|
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
       |gx[1]#_g5370_|
       'expander-identifiers:
       (cons |gx[1]#_g5371_|
             (cons |gx[1]#_g5372_|
                   (cons |gx[1]#_g5373_|
                         (cons |gx[1]#_g5374_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#runtime-binding::t
        |gx[1]#_g5375_|
        'runtime-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#local-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5376_|
       'expander-identifiers:
       (cons |gx[1]#_g5377_|
             (cons |gx[1]#_g5378_|
                   (cons |gx[1]#_g5379_|
                         (cons |gx[1]#_g5380_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-binding::t
        |gx[1]#_g5381_|
        'local-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#top-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5382_|
       'expander-identifiers:
       (cons |gx[1]#_g5383_|
             (cons |gx[1]#_g5384_|
                   (cons |gx[1]#_g5385_|
                         (cons |gx[1]#_g5386_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-binding::t
        |gx[1]#_g5387_|
        'top-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#module-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5388_|
       'expander-identifiers:
       (cons |gx[1]#_g5389_|
             (cons |gx[1]#_g5390_|
                   (cons |gx[1]#_g5391_|
                         (cons |gx[1]#_g5392_|
                               (cons (cons |gx[1]#_g5393_| '())
                                     (cons (cons |gx[1]#_g5394_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-binding::t
        |gx[1]#_g5395_|
        'module-binding
        '#f
        '()
        '(context))))
    (define |gx[:0:]#extern-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5396_|
       'expander-identifiers:
       (cons |gx[1]#_g5397_|
             (cons |gx[1]#_g5398_|
                   (cons |gx[1]#_g5399_|
                         (cons |gx[1]#_g5400_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#extern-binding::t
        |gx[1]#_g5401_|
        'extern-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#syntax-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5402_|
       'expander-identifiers:
       (cons |gx[1]#_g5403_|
             (cons |gx[1]#_g5404_|
                   (cons |gx[1]#_g5405_|
                         (cons |gx[1]#_g5406_|
                               (cons (cons |gx[1]#_g5407_| '())
                                     (cons (cons |gx[1]#_g5408_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-binding::t
        |gx[1]#_g5409_|
        'syntax-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#import-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5410_|
       'expander-identifiers:
       (cons |gx[1]#_g5411_|
             (cons |gx[1]#_g5412_|
                   (cons |gx[1]#_g5413_|
                         (cons |gx[1]#_g5414_|
                               (cons (cons |gx[1]#_g5415_|
                                           (cons |gx[1]#_g5416_|
                                                 (cons |gx[1]#_g5417_| '())))
                                     (cons (cons |gx[1]#_g5418_|
                                                 (cons |gx[1]#_g5419_|
                                                       (cons |gx[1]#_g5420_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-binding::t
        |gx[1]#_g5421_|
        'import-binding
        '#f
        '((final: . #t))
        '(e context weak?))))
    (define |gx[:0:]#alias-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5422_|
       'expander-identifiers:
       (cons |gx[1]#_g5423_|
             (cons |gx[1]#_g5424_|
                   (cons |gx[1]#_g5425_|
                         (cons |gx[1]#_g5426_|
                               (cons (cons |gx[1]#_g5427_| '())
                                     (cons (cons |gx[1]#_g5428_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#alias-binding::t
        |gx[1]#_g5429_|
        'alias-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5430_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g5431_|
                   (cons |gx[1]#_g5432_|
                         (cons |gx[1]#_g5433_|
                               (cons (cons |gx[1]#_g5434_| '())
                                     (cons (cons |gx[1]#_g5435_| '()) '()))))))
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
       |gx[1]#_g5436_|
       'expander-identifiers:
       (cons |gx[1]#_g5437_|
             (cons |gx[1]#_g5438_|
                   (cons |gx[1]#_g5439_|
                         (cons |gx[1]#_g5440_|
                               (cons (cons |gx[1]#_g5441_|
                                           (cons |gx[1]#_g5442_| '()))
                                     (cons (cons |gx[1]#_g5443_|
                                                 (cons |gx[1]#_g5444_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-expander::t
        |gx[1]#_g5445_|
        'core-expander
        '#f
        '()
        '(id compile-top))))
    (define |gx[:0:]#expression-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5446_|
       'expander-identifiers:
       (cons |gx[1]#_g5447_|
             (cons |gx[1]#_g5448_|
                   (cons |gx[1]#_g5449_|
                         (cons |gx[1]#_g5450_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expression-form::t
        |gx[1]#_g5451_|
        'expression-form
        '#f
        '()
        '())))
    (define |gx[:0:]#special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5452_|
       'expander-identifiers:
       (cons |gx[1]#_g5453_|
             (cons |gx[1]#_g5454_|
                   (cons |gx[1]#_g5455_|
                         (cons |gx[1]#_g5456_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#special-form::t
        |gx[1]#_g5457_|
        'special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#definition-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5458_|
       'expander-identifiers:
       (cons |gx[1]#_g5459_|
             (cons |gx[1]#_g5460_|
                   (cons |gx[1]#_g5461_|
                         (cons |gx[1]#_g5462_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#definition-form::t
        |gx[1]#_g5463_|
        'definition-form
        '#f
        '()
        '())))
    (define |gx[:0:]#top-special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5464_|
       'expander-identifiers:
       (cons |gx[1]#_g5465_|
             (cons |gx[1]#_g5466_|
                   (cons |gx[1]#_g5467_|
                         (cons |gx[1]#_g5468_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-special-form::t
        |gx[1]#_g5469_|
        'top-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#module-special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5470_|
       'expander-identifiers:
       (cons |gx[1]#_g5471_|
             (cons |gx[1]#_g5472_|
                   (cons |gx[1]#_g5473_|
                         (cons |gx[1]#_g5474_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-special-form::t
        |gx[1]#_g5475_|
        'module-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#feature-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5476_|
       'expander-identifiers:
       (cons |gx[1]#_g5477_|
             (cons |gx[1]#_g5478_|
                   (cons |gx[1]#_g5479_|
                         (cons |gx[1]#_g5480_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#feature-expander::t
        |gx[1]#_g5481_|
        'feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#private-feature-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5482_|
       'expander-identifiers:
       (cons |gx[1]#_g5483_|
             (cons |gx[1]#_g5484_|
                   (cons |gx[1]#_g5485_|
                         (cons |gx[1]#_g5486_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#private-feature-expander::t
        |gx[1]#_g5487_|
        'private-feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#reserved-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5488_|
       'expander-identifiers:
       (cons |gx[1]#_g5489_|
             (cons |gx[1]#_g5490_|
                   (cons |gx[1]#_g5491_|
                         (cons |gx[1]#_g5492_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#reserved-expander::t
        |gx[1]#_g5493_|
        'reserved-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#macro-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5494_|
       'expander-identifiers:
       (cons |gx[1]#_g5495_|
             (cons |gx[1]#_g5496_|
                   (cons |gx[1]#_g5497_|
                         (cons |gx[1]#_g5498_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-macro::t
        |gx[1]#_g5499_|
        'macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#rename-macro-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5500_|
       'expander-identifiers:
       (cons |gx[1]#_g5501_|
             (cons |gx[1]#_g5502_|
                   (cons |gx[1]#_g5503_|
                         (cons |gx[1]#_g5504_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#rename-macro-expander::t
        |gx[1]#_g5505_|
        'rename-macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#user-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5506_|
       'expander-identifiers:
       (cons |gx[1]#_g5507_|
             (cons |gx[1]#_g5508_|
                   (cons |gx[1]#_g5509_|
                         (cons |gx[1]#_g5510_|
                               (cons (cons |gx[1]#_g5511_|
                                           (cons |gx[1]#_g5512_| '()))
                                     (cons (cons |gx[1]#_g5513_|
                                                 (cons |gx[1]#_g5514_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#macro-expander::t
        |gx[1]#_g5515_|
        'user-expander
        '#f
        '()
        '(context phi))))
    (define |gx[:0:]#expander-mark|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5516_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g5517_|
                   (cons |gx[1]#_g5518_|
                         (cons |gx[1]#_g5519_|
                               (cons (cons |gx[1]#_g5520_|
                                           (cons |gx[1]#_g5521_|
                                                 (cons |gx[1]#_g5522_|
                                                       (cons |gx[1]#_g5523_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g5524_|
                                                 (cons |gx[1]#_g5525_|
                                                       (cons |gx[1]#_g5526_|
                                                             (cons |gx[1]#_g5527_|
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
       |gx[1]#_g5528_|
       'expander-identifiers:
       (cons |gx[1]#_g5529_|
             (cons |gx[1]#_g5530_|
                   (cons |gx[1]#_g5531_|
                         (cons |gx[1]#_g5532_|
                               (cons (cons |gx[1]#_g5533_|
                                           (cons |gx[1]#_g5534_|
                                                 (cons |gx[1]#_g5535_| '())))
                                     (cons (cons |gx[1]#_g5536_|
                                                 (cons |gx[1]#_g5537_|
                                                       (cons |gx[1]#_g5538_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-error::t
        |gx[1]#_g5539_|
        'syntax-error
        '#f
        '()
        '(context marks phi))))))
