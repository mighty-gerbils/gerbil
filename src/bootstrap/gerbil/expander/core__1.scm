(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g5700_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g5701_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g5702_| (gx#core-quote-syntax 'make-expander-context))
  (define |gx[1]#_g5703_| (gx#core-quote-syntax 'expander-context?))
  (define |gx[1]#_g5704_| (gx#core-quote-syntax 'expander-context-id))
  (define |gx[1]#_g5705_| (gx#core-quote-syntax 'expander-context-table))
  (define |gx[1]#_g5706_| (gx#core-quote-syntax 'expander-context-id-set!))
  (define |gx[1]#_g5707_| (gx#core-quote-syntax 'expander-context-table-set!))
  (define |gx[1]#_g5708_| (gx#core-quote-syntax 'root-context::t))
  (define |gx[1]#_g5709_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g5710_| (gx#core-quote-syntax 'root-context::t))
  (define |gx[1]#_g5711_| (gx#core-quote-syntax 'make-root-context))
  (define |gx[1]#_g5712_| (gx#core-quote-syntax 'root-context?))
  (define |gx[1]#_g5713_| (gx#core-quote-syntax 'expander-context))
  (define |gx[1]#_g5714_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g5715_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g5716_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g5717_| (gx#core-quote-syntax 'make-phi-context))
  (define |gx[1]#_g5718_| (gx#core-quote-syntax 'phi-context?))
  (define |gx[1]#_g5719_| (gx#core-quote-syntax 'phi-context-super))
  (define |gx[1]#_g5720_| (gx#core-quote-syntax 'phi-context-up))
  (define |gx[1]#_g5721_| (gx#core-quote-syntax 'phi-context-down))
  (define |gx[1]#_g5722_| (gx#core-quote-syntax 'phi-context-super-set!))
  (define |gx[1]#_g5723_| (gx#core-quote-syntax 'phi-context-up-set!))
  (define |gx[1]#_g5724_| (gx#core-quote-syntax 'phi-context-down-set!))
  (define |gx[1]#_g5725_| (gx#core-quote-syntax 'expander-context))
  (define |gx[1]#_g5726_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g5727_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g5728_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g5729_| (gx#core-quote-syntax 'make-top-context))
  (define |gx[1]#_g5730_| (gx#core-quote-syntax 'top-context?))
  (define |gx[1]#_g5731_| (gx#core-quote-syntax 'phi-context))
  (define |gx[1]#_g5732_| (gx#core-quote-syntax 'module-context::t))
  (define |gx[1]#_g5733_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g5734_| (gx#core-quote-syntax 'module-context::t))
  (define |gx[1]#_g5735_| (gx#core-quote-syntax 'make-module-context))
  (define |gx[1]#_g5736_| (gx#core-quote-syntax 'module-context?))
  (define |gx[1]#_g5737_| (gx#core-quote-syntax 'module-context-ns))
  (define |gx[1]#_g5738_| (gx#core-quote-syntax 'module-context-path))
  (define |gx[1]#_g5739_| (gx#core-quote-syntax 'module-context-import))
  (define |gx[1]#_g5740_| (gx#core-quote-syntax 'module-context-export))
  (define |gx[1]#_g5741_| (gx#core-quote-syntax 'module-context-e))
  (define |gx[1]#_g5742_| (gx#core-quote-syntax 'module-context-code))
  (define |gx[1]#_g5743_| (gx#core-quote-syntax 'module-context-ns-set!))
  (define |gx[1]#_g5744_| (gx#core-quote-syntax 'module-context-path-set!))
  (define |gx[1]#_g5745_| (gx#core-quote-syntax 'module-context-import-set!))
  (define |gx[1]#_g5746_| (gx#core-quote-syntax 'module-context-export-set!))
  (define |gx[1]#_g5747_| (gx#core-quote-syntax 'module-context-e-set!))
  (define |gx[1]#_g5748_| (gx#core-quote-syntax 'module-context-code-set!))
  (define |gx[1]#_g5749_| (gx#core-quote-syntax 'top-context))
  (define |gx[1]#_g5750_| (gx#core-quote-syntax 'prelude-context::t))
  (define |gx[1]#_g5751_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g5752_| (gx#core-quote-syntax 'prelude-context::t))
  (define |gx[1]#_g5753_| (gx#core-quote-syntax 'make-prelude-context))
  (define |gx[1]#_g5754_| (gx#core-quote-syntax 'prelude-context?))
  (define |gx[1]#_g5755_| (gx#core-quote-syntax 'prelude-context-path))
  (define |gx[1]#_g5756_| (gx#core-quote-syntax 'prelude-context-import))
  (define |gx[1]#_g5757_| (gx#core-quote-syntax 'prelude-context-e))
  (define |gx[1]#_g5758_| (gx#core-quote-syntax 'prelude-context-path-set!))
  (define |gx[1]#_g5759_| (gx#core-quote-syntax 'prelude-context-import-set!))
  (define |gx[1]#_g5760_| (gx#core-quote-syntax 'prelude-context-e-set!))
  (define |gx[1]#_g5761_| (gx#core-quote-syntax 'top-context))
  (define |gx[1]#_g5762_| (gx#core-quote-syntax 'local-context::t))
  (define |gx[1]#_g5763_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g5764_| (gx#core-quote-syntax 'local-context::t))
  (define |gx[1]#_g5765_| (gx#core-quote-syntax 'make-local-context))
  (define |gx[1]#_g5766_| (gx#core-quote-syntax 'local-context?))
  (define |gx[1]#_g5767_| (gx#core-quote-syntax 'phi-context))
  (define |gx[1]#_g5768_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g5769_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g5770_| (gx#core-quote-syntax 'make-binding))
  (define |gx[1]#_g5771_| (gx#core-quote-syntax 'binding?))
  (define |gx[1]#_g5772_| (gx#core-quote-syntax 'binding-id))
  (define |gx[1]#_g5773_| (gx#core-quote-syntax 'binding-key))
  (define |gx[1]#_g5774_| (gx#core-quote-syntax 'binding-phi))
  (define |gx[1]#_g5775_| (gx#core-quote-syntax 'binding-id-set!))
  (define |gx[1]#_g5776_| (gx#core-quote-syntax 'binding-key-set!))
  (define |gx[1]#_g5777_| (gx#core-quote-syntax 'binding-phi-set!))
  (define |gx[1]#_g5778_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g5779_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g5780_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g5781_| (gx#core-quote-syntax 'make-runtime-binding))
  (define |gx[1]#_g5782_| (gx#core-quote-syntax 'runtime-binding?))
  (define |gx[1]#_g5783_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g5784_| (gx#core-quote-syntax 'local-binding::t))
  (define |gx[1]#_g5785_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g5786_| (gx#core-quote-syntax 'local-binding::t))
  (define |gx[1]#_g5787_| (gx#core-quote-syntax 'make-local-binding))
  (define |gx[1]#_g5788_| (gx#core-quote-syntax 'local-binding?))
  (define |gx[1]#_g5789_| (gx#core-quote-syntax 'runtime-binding))
  (define |gx[1]#_g5790_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g5791_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g5792_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g5793_| (gx#core-quote-syntax 'make-top-binding))
  (define |gx[1]#_g5794_| (gx#core-quote-syntax 'top-binding?))
  (define |gx[1]#_g5795_| (gx#core-quote-syntax 'runtime-binding))
  (define |gx[1]#_g5796_| (gx#core-quote-syntax 'module-binding::t))
  (define |gx[1]#_g5797_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g5798_| (gx#core-quote-syntax 'module-binding::t))
  (define |gx[1]#_g5799_| (gx#core-quote-syntax 'make-module-binding))
  (define |gx[1]#_g5800_| (gx#core-quote-syntax 'module-binding?))
  (define |gx[1]#_g5801_| (gx#core-quote-syntax 'module-binding-context))
  (define |gx[1]#_g5802_| (gx#core-quote-syntax 'module-binding-context-set!))
  (define |gx[1]#_g5803_| (gx#core-quote-syntax 'top-binding))
  (define |gx[1]#_g5804_| (gx#core-quote-syntax 'extern-binding::t))
  (define |gx[1]#_g5805_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g5806_| (gx#core-quote-syntax 'extern-binding::t))
  (define |gx[1]#_g5807_| (gx#core-quote-syntax 'make-extern-binding))
  (define |gx[1]#_g5808_| (gx#core-quote-syntax 'extern-binding?))
  (define |gx[1]#_g5809_| (gx#core-quote-syntax 'top-binding))
  (define |gx[1]#_g5810_| (gx#core-quote-syntax 'syntax-binding::t))
  (define |gx[1]#_g5811_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g5812_| (gx#core-quote-syntax 'syntax-binding::t))
  (define |gx[1]#_g5813_| (gx#core-quote-syntax 'make-syntax-binding))
  (define |gx[1]#_g5814_| (gx#core-quote-syntax 'syntax-binding?))
  (define |gx[1]#_g5815_| (gx#core-quote-syntax 'syntax-binding-e))
  (define |gx[1]#_g5816_| (gx#core-quote-syntax 'syntax-binding-e-set!))
  (define |gx[1]#_g5817_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g5818_| (gx#core-quote-syntax 'import-binding::t))
  (define |gx[1]#_g5819_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g5820_| (gx#core-quote-syntax 'import-binding::t))
  (define |gx[1]#_g5821_| (gx#core-quote-syntax 'make-import-binding))
  (define |gx[1]#_g5822_| (gx#core-quote-syntax 'import-binding?))
  (define |gx[1]#_g5823_| (gx#core-quote-syntax 'import-binding-e))
  (define |gx[1]#_g5824_| (gx#core-quote-syntax 'import-binding-context))
  (define |gx[1]#_g5825_| (gx#core-quote-syntax 'import-binding-weak?))
  (define |gx[1]#_g5826_| (gx#core-quote-syntax 'import-binding-e-set!))
  (define |gx[1]#_g5827_| (gx#core-quote-syntax 'import-binding-context-set!))
  (define |gx[1]#_g5828_| (gx#core-quote-syntax 'import-binding-weak?-set!))
  (define |gx[1]#_g5829_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g5830_| (gx#core-quote-syntax 'alias-binding::t))
  (define |gx[1]#_g5831_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g5832_| (gx#core-quote-syntax 'alias-binding::t))
  (define |gx[1]#_g5833_| (gx#core-quote-syntax 'make-alias-binding))
  (define |gx[1]#_g5834_| (gx#core-quote-syntax 'alias-binding?))
  (define |gx[1]#_g5835_| (gx#core-quote-syntax 'alias-binding-e))
  (define |gx[1]#_g5836_| (gx#core-quote-syntax 'alias-binding-e-set!))
  (define |gx[1]#_g5837_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g5838_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g5839_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g5840_| (gx#core-quote-syntax 'make-expander))
  (define |gx[1]#_g5841_| (gx#core-quote-syntax 'expander?))
  (define |gx[1]#_g5842_| (gx#core-quote-syntax 'expander-e))
  (define |gx[1]#_g5843_| (gx#core-quote-syntax 'expander-e-set!))
  (define |gx[1]#_g5844_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g5845_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g5846_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g5847_| (gx#core-quote-syntax 'make-core-expander))
  (define |gx[1]#_g5848_| (gx#core-quote-syntax 'core-expander?))
  (define |gx[1]#_g5849_| (gx#core-quote-syntax 'core-expander-id))
  (define |gx[1]#_g5850_| (gx#core-quote-syntax 'core-expander-compile-top))
  (define |gx[1]#_g5851_| (gx#core-quote-syntax 'core-expander-id-set!))
  (define |gx[1]#_g5852_|
    (gx#core-quote-syntax 'core-expander-compile-top-set!))
  (define |gx[1]#_g5853_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g5854_| (gx#core-quote-syntax 'expression-form::t))
  (define |gx[1]#_g5855_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g5856_| (gx#core-quote-syntax 'expression-form::t))
  (define |gx[1]#_g5857_| (gx#core-quote-syntax 'make-expression-form))
  (define |gx[1]#_g5858_| (gx#core-quote-syntax 'expression-form?))
  (define |gx[1]#_g5859_| (gx#core-quote-syntax 'core-expander))
  (define |gx[1]#_g5860_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g5861_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g5862_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g5863_| (gx#core-quote-syntax 'make-special-form))
  (define |gx[1]#_g5864_| (gx#core-quote-syntax 'special-form?))
  (define |gx[1]#_g5865_| (gx#core-quote-syntax 'core-expander))
  (define |gx[1]#_g5866_| (gx#core-quote-syntax 'definition-form::t))
  (define |gx[1]#_g5867_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g5868_| (gx#core-quote-syntax 'definition-form::t))
  (define |gx[1]#_g5869_| (gx#core-quote-syntax 'make-definition-form))
  (define |gx[1]#_g5870_| (gx#core-quote-syntax 'definition-form?))
  (define |gx[1]#_g5871_| (gx#core-quote-syntax 'special-form))
  (define |gx[1]#_g5872_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g5873_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g5874_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g5875_| (gx#core-quote-syntax 'make-top-special-form))
  (define |gx[1]#_g5876_| (gx#core-quote-syntax 'top-special-form?))
  (define |gx[1]#_g5877_| (gx#core-quote-syntax 'special-form))
  (define |gx[1]#_g5878_| (gx#core-quote-syntax 'module-special-form::t))
  (define |gx[1]#_g5879_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g5880_| (gx#core-quote-syntax 'module-special-form::t))
  (define |gx[1]#_g5881_| (gx#core-quote-syntax 'make-module-special-form))
  (define |gx[1]#_g5882_| (gx#core-quote-syntax 'module-special-form?))
  (define |gx[1]#_g5883_| (gx#core-quote-syntax 'top-special-form))
  (define |gx[1]#_g5884_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g5885_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g5886_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g5887_| (gx#core-quote-syntax 'make-feature-expander))
  (define |gx[1]#_g5888_| (gx#core-quote-syntax 'feature-expander?))
  (define |gx[1]#_g5889_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g5890_| (gx#core-quote-syntax 'private-feature-expander::t))
  (define |gx[1]#_g5891_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g5892_| (gx#core-quote-syntax 'private-feature-expander::t))
  (define |gx[1]#_g5893_|
    (gx#core-quote-syntax 'make-private-feature-expander))
  (define |gx[1]#_g5894_| (gx#core-quote-syntax 'private-feature-expander?))
  (define |gx[1]#_g5895_| (gx#core-quote-syntax 'feature-expander))
  (define |gx[1]#_g5896_| (gx#core-quote-syntax 'reserved-expander::t))
  (define |gx[1]#_g5897_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g5898_| (gx#core-quote-syntax 'reserved-expander::t))
  (define |gx[1]#_g5899_| (gx#core-quote-syntax 'make-reserved-expander))
  (define |gx[1]#_g5900_| (gx#core-quote-syntax 'reserved-expander?))
  (define |gx[1]#_g5901_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g5902_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g5903_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g5904_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g5905_| (gx#core-quote-syntax 'make-macro-expander))
  (define |gx[1]#_g5906_| (gx#core-quote-syntax 'macro-expander?))
  (define |gx[1]#_g5907_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g5908_| (gx#core-quote-syntax 'rename-macro-expander::t))
  (define |gx[1]#_g5909_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g5910_| (gx#core-quote-syntax 'rename-macro-expander::t))
  (define |gx[1]#_g5911_| (gx#core-quote-syntax 'make-rename-macro-expander))
  (define |gx[1]#_g5912_| (gx#core-quote-syntax 'rename-macro-expander?))
  (define |gx[1]#_g5913_| (gx#core-quote-syntax 'macro-expander))
  (define |gx[1]#_g5914_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g5915_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g5916_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g5917_| (gx#core-quote-syntax 'make-user-expander))
  (define |gx[1]#_g5918_| (gx#core-quote-syntax 'user-expander?))
  (define |gx[1]#_g5919_| (gx#core-quote-syntax 'user-expander-context))
  (define |gx[1]#_g5920_| (gx#core-quote-syntax 'user-expander-phi))
  (define |gx[1]#_g5921_| (gx#core-quote-syntax 'user-expander-context-set!))
  (define |gx[1]#_g5922_| (gx#core-quote-syntax 'user-expander-phi-set!))
  (define |gx[1]#_g5923_| (gx#core-quote-syntax 'macro-expander))
  (define |gx[1]#_g5924_| (gx#core-quote-syntax 'expander-mark::t))
  (define |gx[1]#_g5925_| (gx#core-quote-syntax 'expander-mark::t))
  (define |gx[1]#_g5926_| (gx#core-quote-syntax 'make-expander-mark))
  (define |gx[1]#_g5927_| (gx#core-quote-syntax 'expander-mark?))
  (define |gx[1]#_g5928_| (gx#core-quote-syntax 'expander-mark-subst))
  (define |gx[1]#_g5929_| (gx#core-quote-syntax 'expander-mark-context))
  (define |gx[1]#_g5930_| (gx#core-quote-syntax 'expander-mark-phi))
  (define |gx[1]#_g5931_| (gx#core-quote-syntax 'expander-mark-trace))
  (define |gx[1]#_g5932_| (gx#core-quote-syntax 'expander-mark-subst-set!))
  (define |gx[1]#_g5933_| (gx#core-quote-syntax 'expander-mark-context-set!))
  (define |gx[1]#_g5934_| (gx#core-quote-syntax 'expander-mark-phi-set!))
  (define |gx[1]#_g5935_| (gx#core-quote-syntax 'expander-mark-trace-set!))
  (define |gx[1]#_g5936_| (gx#core-quote-syntax 'syntax-error::t))
  (define |gx[1]#_g5937_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g5938_| (gx#core-quote-syntax 'syntax-error::t))
  (define |gx[1]#_g5939_| (gx#core-quote-syntax 'make-syntax-error))
  (define |gx[1]#_g5940_| (gx#core-quote-syntax 'syntax-error?))
  (define |gx[1]#_g5941_| (gx#core-quote-syntax 'syntax-error-context))
  (define |gx[1]#_g5942_| (gx#core-quote-syntax 'syntax-error-marks))
  (define |gx[1]#_g5943_| (gx#core-quote-syntax 'syntax-error-phi))
  (define |gx[1]#_g5944_| (gx#core-quote-syntax 'syntax-error-context-set!))
  (define |gx[1]#_g5945_| (gx#core-quote-syntax 'syntax-error-marks-set!))
  (define |gx[1]#_g5946_| (gx#core-quote-syntax 'syntax-error-phi-set!))
  (define |gx[1]#_g5947_| (gx#core-quote-syntax '<error>))
  (begin
    (define |gx[:0:]#expander-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5700_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g5701_|
                   (cons |gx[1]#_g5702_|
                         (cons |gx[1]#_g5703_|
                               (cons (cons |gx[1]#_g5704_|
                                           (cons |gx[1]#_g5705_| '()))
                                     (cons (cons |gx[1]#_g5706_|
                                                 (cons |gx[1]#_g5707_| '()))
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
       |gx[1]#_g5708_|
       'expander-identifiers:
       (cons |gx[1]#_g5709_|
             (cons |gx[1]#_g5710_|
                   (cons |gx[1]#_g5711_|
                         (cons |gx[1]#_g5712_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#root-context::t
        |gx[1]#_g5713_|
        'root-context
        '#f
        '()
        '())))
    (define |gx[:0:]#phi-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5714_|
       'expander-identifiers:
       (cons |gx[1]#_g5715_|
             (cons |gx[1]#_g5716_|
                   (cons |gx[1]#_g5717_|
                         (cons |gx[1]#_g5718_|
                               (cons (cons |gx[1]#_g5719_|
                                           (cons |gx[1]#_g5720_|
                                                 (cons |gx[1]#_g5721_| '())))
                                     (cons (cons |gx[1]#_g5722_|
                                                 (cons |gx[1]#_g5723_|
                                                       (cons |gx[1]#_g5724_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#context-phi::t
        |gx[1]#_g5725_|
        'phi-context
        '#f
        '()
        '(super up down))))
    (define |gx[:0:]#top-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5726_|
       'expander-identifiers:
       (cons |gx[1]#_g5727_|
             (cons |gx[1]#_g5728_|
                   (cons |gx[1]#_g5729_|
                         (cons |gx[1]#_g5730_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-context::t
        |gx[1]#_g5731_|
        'top-context
        '#f
        '()
        '())))
    (define |gx[:0:]#module-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5732_|
       'expander-identifiers:
       (cons |gx[1]#_g5733_|
             (cons |gx[1]#_g5734_|
                   (cons |gx[1]#_g5735_|
                         (cons |gx[1]#_g5736_|
                               (cons (cons |gx[1]#_g5737_|
                                           (cons |gx[1]#_g5738_|
                                                 (cons |gx[1]#_g5739_|
                                                       (cons |gx[1]#_g5740_|
                                                             (cons |gx[1]#_g5741_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g5742_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g5743_|
                                                 (cons |gx[1]#_g5744_|
                                                       (cons |gx[1]#_g5745_|
                                                             (cons |gx[1]#_g5746_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g5747_|
                                 (cons |gx[1]#_g5748_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-context::t
        |gx[1]#_g5749_|
        'module-context
        '#f
        '()
        '(ns path import export e code))))
    (define |gx[:0:]#prelude-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5750_|
       'expander-identifiers:
       (cons |gx[1]#_g5751_|
             (cons |gx[1]#_g5752_|
                   (cons |gx[1]#_g5753_|
                         (cons |gx[1]#_g5754_|
                               (cons (cons |gx[1]#_g5755_|
                                           (cons |gx[1]#_g5756_|
                                                 (cons |gx[1]#_g5757_| '())))
                                     (cons (cons |gx[1]#_g5758_|
                                                 (cons |gx[1]#_g5759_|
                                                       (cons |gx[1]#_g5760_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#prelude-context::t
        |gx[1]#_g5761_|
        'prelude-context
        '#f
        '()
        '(path import e))))
    (define |gx[:0:]#local-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5762_|
       'expander-identifiers:
       (cons |gx[1]#_g5763_|
             (cons |gx[1]#_g5764_|
                   (cons |gx[1]#_g5765_|
                         (cons |gx[1]#_g5766_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-context::t
        |gx[1]#_g5767_|
        'local-context
        '#f
        '()
        '())))
    (define |gx[:0:]#binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5768_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g5769_|
                   (cons |gx[1]#_g5770_|
                         (cons |gx[1]#_g5771_|
                               (cons (cons |gx[1]#_g5772_|
                                           (cons |gx[1]#_g5773_|
                                                 (cons |gx[1]#_g5774_| '())))
                                     (cons (cons |gx[1]#_g5775_|
                                                 (cons |gx[1]#_g5776_|
                                                       (cons |gx[1]#_g5777_|
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
       |gx[1]#_g5778_|
       'expander-identifiers:
       (cons |gx[1]#_g5779_|
             (cons |gx[1]#_g5780_|
                   (cons |gx[1]#_g5781_|
                         (cons |gx[1]#_g5782_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#runtime-binding::t
        |gx[1]#_g5783_|
        'runtime-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#local-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5784_|
       'expander-identifiers:
       (cons |gx[1]#_g5785_|
             (cons |gx[1]#_g5786_|
                   (cons |gx[1]#_g5787_|
                         (cons |gx[1]#_g5788_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-binding::t
        |gx[1]#_g5789_|
        'local-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#top-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5790_|
       'expander-identifiers:
       (cons |gx[1]#_g5791_|
             (cons |gx[1]#_g5792_|
                   (cons |gx[1]#_g5793_|
                         (cons |gx[1]#_g5794_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-binding::t
        |gx[1]#_g5795_|
        'top-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#module-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5796_|
       'expander-identifiers:
       (cons |gx[1]#_g5797_|
             (cons |gx[1]#_g5798_|
                   (cons |gx[1]#_g5799_|
                         (cons |gx[1]#_g5800_|
                               (cons (cons |gx[1]#_g5801_| '())
                                     (cons (cons |gx[1]#_g5802_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-binding::t
        |gx[1]#_g5803_|
        'module-binding
        '#f
        '()
        '(context))))
    (define |gx[:0:]#extern-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5804_|
       'expander-identifiers:
       (cons |gx[1]#_g5805_|
             (cons |gx[1]#_g5806_|
                   (cons |gx[1]#_g5807_|
                         (cons |gx[1]#_g5808_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#extern-binding::t
        |gx[1]#_g5809_|
        'extern-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#syntax-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5810_|
       'expander-identifiers:
       (cons |gx[1]#_g5811_|
             (cons |gx[1]#_g5812_|
                   (cons |gx[1]#_g5813_|
                         (cons |gx[1]#_g5814_|
                               (cons (cons |gx[1]#_g5815_| '())
                                     (cons (cons |gx[1]#_g5816_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-binding::t
        |gx[1]#_g5817_|
        'syntax-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#import-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5818_|
       'expander-identifiers:
       (cons |gx[1]#_g5819_|
             (cons |gx[1]#_g5820_|
                   (cons |gx[1]#_g5821_|
                         (cons |gx[1]#_g5822_|
                               (cons (cons |gx[1]#_g5823_|
                                           (cons |gx[1]#_g5824_|
                                                 (cons |gx[1]#_g5825_| '())))
                                     (cons (cons |gx[1]#_g5826_|
                                                 (cons |gx[1]#_g5827_|
                                                       (cons |gx[1]#_g5828_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-binding::t
        |gx[1]#_g5829_|
        'import-binding
        '#f
        '((final: . #t))
        '(e context weak?))))
    (define |gx[:0:]#alias-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5830_|
       'expander-identifiers:
       (cons |gx[1]#_g5831_|
             (cons |gx[1]#_g5832_|
                   (cons |gx[1]#_g5833_|
                         (cons |gx[1]#_g5834_|
                               (cons (cons |gx[1]#_g5835_| '())
                                     (cons (cons |gx[1]#_g5836_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#alias-binding::t
        |gx[1]#_g5837_|
        'alias-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5838_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g5839_|
                   (cons |gx[1]#_g5840_|
                         (cons |gx[1]#_g5841_|
                               (cons (cons |gx[1]#_g5842_| '())
                                     (cons (cons |gx[1]#_g5843_| '()) '()))))))
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
       |gx[1]#_g5844_|
       'expander-identifiers:
       (cons |gx[1]#_g5845_|
             (cons |gx[1]#_g5846_|
                   (cons |gx[1]#_g5847_|
                         (cons |gx[1]#_g5848_|
                               (cons (cons |gx[1]#_g5849_|
                                           (cons |gx[1]#_g5850_| '()))
                                     (cons (cons |gx[1]#_g5851_|
                                                 (cons |gx[1]#_g5852_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-expander::t
        |gx[1]#_g5853_|
        'core-expander
        '#f
        '()
        '(id compile-top))))
    (define |gx[:0:]#expression-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5854_|
       'expander-identifiers:
       (cons |gx[1]#_g5855_|
             (cons |gx[1]#_g5856_|
                   (cons |gx[1]#_g5857_|
                         (cons |gx[1]#_g5858_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expression-form::t
        |gx[1]#_g5859_|
        'expression-form
        '#f
        '()
        '())))
    (define |gx[:0:]#special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5860_|
       'expander-identifiers:
       (cons |gx[1]#_g5861_|
             (cons |gx[1]#_g5862_|
                   (cons |gx[1]#_g5863_|
                         (cons |gx[1]#_g5864_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#special-form::t
        |gx[1]#_g5865_|
        'special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#definition-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5866_|
       'expander-identifiers:
       (cons |gx[1]#_g5867_|
             (cons |gx[1]#_g5868_|
                   (cons |gx[1]#_g5869_|
                         (cons |gx[1]#_g5870_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#definition-form::t
        |gx[1]#_g5871_|
        'definition-form
        '#f
        '()
        '())))
    (define |gx[:0:]#top-special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5872_|
       'expander-identifiers:
       (cons |gx[1]#_g5873_|
             (cons |gx[1]#_g5874_|
                   (cons |gx[1]#_g5875_|
                         (cons |gx[1]#_g5876_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-special-form::t
        |gx[1]#_g5877_|
        'top-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#module-special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5878_|
       'expander-identifiers:
       (cons |gx[1]#_g5879_|
             (cons |gx[1]#_g5880_|
                   (cons |gx[1]#_g5881_|
                         (cons |gx[1]#_g5882_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-special-form::t
        |gx[1]#_g5883_|
        'module-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#feature-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5884_|
       'expander-identifiers:
       (cons |gx[1]#_g5885_|
             (cons |gx[1]#_g5886_|
                   (cons |gx[1]#_g5887_|
                         (cons |gx[1]#_g5888_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#feature-expander::t
        |gx[1]#_g5889_|
        'feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#private-feature-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5890_|
       'expander-identifiers:
       (cons |gx[1]#_g5891_|
             (cons |gx[1]#_g5892_|
                   (cons |gx[1]#_g5893_|
                         (cons |gx[1]#_g5894_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#private-feature-expander::t
        |gx[1]#_g5895_|
        'private-feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#reserved-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5896_|
       'expander-identifiers:
       (cons |gx[1]#_g5897_|
             (cons |gx[1]#_g5898_|
                   (cons |gx[1]#_g5899_|
                         (cons |gx[1]#_g5900_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#reserved-expander::t
        |gx[1]#_g5901_|
        'reserved-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#macro-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5902_|
       'expander-identifiers:
       (cons |gx[1]#_g5903_|
             (cons |gx[1]#_g5904_|
                   (cons |gx[1]#_g5905_|
                         (cons |gx[1]#_g5906_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-macro::t
        |gx[1]#_g5907_|
        'macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#rename-macro-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5908_|
       'expander-identifiers:
       (cons |gx[1]#_g5909_|
             (cons |gx[1]#_g5910_|
                   (cons |gx[1]#_g5911_|
                         (cons |gx[1]#_g5912_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#rename-macro-expander::t
        |gx[1]#_g5913_|
        'rename-macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#user-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5914_|
       'expander-identifiers:
       (cons |gx[1]#_g5915_|
             (cons |gx[1]#_g5916_|
                   (cons |gx[1]#_g5917_|
                         (cons |gx[1]#_g5918_|
                               (cons (cons |gx[1]#_g5919_|
                                           (cons |gx[1]#_g5920_| '()))
                                     (cons (cons |gx[1]#_g5921_|
                                                 (cons |gx[1]#_g5922_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#macro-expander::t
        |gx[1]#_g5923_|
        'user-expander
        '#f
        '()
        '(context phi))))
    (define |gx[:0:]#expander-mark|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5924_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g5925_|
                   (cons |gx[1]#_g5926_|
                         (cons |gx[1]#_g5927_|
                               (cons (cons |gx[1]#_g5928_|
                                           (cons |gx[1]#_g5929_|
                                                 (cons |gx[1]#_g5930_|
                                                       (cons |gx[1]#_g5931_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g5932_|
                                                 (cons |gx[1]#_g5933_|
                                                       (cons |gx[1]#_g5934_|
                                                             (cons |gx[1]#_g5935_|
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
       |gx[1]#_g5936_|
       'expander-identifiers:
       (cons |gx[1]#_g5937_|
             (cons |gx[1]#_g5938_|
                   (cons |gx[1]#_g5939_|
                         (cons |gx[1]#_g5940_|
                               (cons (cons |gx[1]#_g5941_|
                                           (cons |gx[1]#_g5942_|
                                                 (cons |gx[1]#_g5943_| '())))
                                     (cons (cons |gx[1]#_g5944_|
                                                 (cons |gx[1]#_g5945_|
                                                       (cons |gx[1]#_g5946_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-error::t
        |gx[1]#_g5947_|
        'syntax-error
        '#f
        '()
        '(context marks phi))))))
