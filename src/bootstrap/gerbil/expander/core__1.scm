(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g9322_|
    (gx#make-syntax-quote
     'expander-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9323_|
    (gx#make-syntax-quote
     'make-expander-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9324_|
    (gx#make-syntax-quote
     'expander-context?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9325_|
    (gx#make-syntax-quote
     'expander-context-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9326_|
    (gx#make-syntax-quote
     'expander-context-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9327_|
    (gx#make-syntax-quote
     'expander-context-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9328_|
    (gx#make-syntax-quote
     'expander-context-table-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9329_|
    (gx#make-syntax-quote
     'root-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9330_|
    (gx#make-syntax-quote
     'make-root-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9331_|
    (gx#make-syntax-quote 'root-context? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9332_|
    (gx#make-syntax-quote
     'expander-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9333_|
    (gx#make-syntax-quote
     'phi-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9334_|
    (gx#make-syntax-quote
     'make-phi-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9335_|
    (gx#make-syntax-quote 'phi-context? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9336_|
    (gx#make-syntax-quote
     'phi-context-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9337_|
    (gx#make-syntax-quote
     'phi-context-up
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9338_|
    (gx#make-syntax-quote
     'phi-context-down
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9339_|
    (gx#make-syntax-quote
     'phi-context-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9340_|
    (gx#make-syntax-quote
     'phi-context-up-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9341_|
    (gx#make-syntax-quote
     'phi-context-down-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9342_|
    (gx#make-syntax-quote
     'top-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9343_|
    (gx#make-syntax-quote
     'make-top-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9344_|
    (gx#make-syntax-quote 'top-context? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9345_|
    (gx#make-syntax-quote 'phi-context #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9346_|
    (gx#make-syntax-quote
     'module-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9347_|
    (gx#make-syntax-quote
     'make-module-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9348_|
    (gx#make-syntax-quote
     'module-context?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9349_|
    (gx#make-syntax-quote
     'module-context-ns
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9350_|
    (gx#make-syntax-quote
     'module-context-path
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9351_|
    (gx#make-syntax-quote
     'module-context-import
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9352_|
    (gx#make-syntax-quote
     'module-context-export
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9353_|
    (gx#make-syntax-quote
     'module-context-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9354_|
    (gx#make-syntax-quote
     'module-context-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9355_|
    (gx#make-syntax-quote
     'module-context-ns-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9356_|
    (gx#make-syntax-quote
     'module-context-path-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9357_|
    (gx#make-syntax-quote
     'module-context-import-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9358_|
    (gx#make-syntax-quote
     'module-context-export-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9359_|
    (gx#make-syntax-quote
     'module-context-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9360_|
    (gx#make-syntax-quote
     'module-context-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9361_|
    (gx#make-syntax-quote 'top-context #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9362_|
    (gx#make-syntax-quote
     'prelude-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9363_|
    (gx#make-syntax-quote
     'make-prelude-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9364_|
    (gx#make-syntax-quote
     'prelude-context?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9365_|
    (gx#make-syntax-quote
     'prelude-context-path
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9366_|
    (gx#make-syntax-quote
     'prelude-context-import
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9367_|
    (gx#make-syntax-quote
     'prelude-context-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9368_|
    (gx#make-syntax-quote
     'prelude-context-path-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9369_|
    (gx#make-syntax-quote
     'prelude-context-import-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9370_|
    (gx#make-syntax-quote
     'prelude-context-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9371_|
    (gx#make-syntax-quote
     'local-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9372_|
    (gx#make-syntax-quote
     'make-local-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9373_|
    (gx#make-syntax-quote
     'local-context?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9374_|
    (gx#make-syntax-quote 'binding::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9375_|
    (gx#make-syntax-quote 'make-binding #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9376_|
    (gx#make-syntax-quote 'binding? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9377_|
    (gx#make-syntax-quote 'binding-id #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9378_|
    (gx#make-syntax-quote 'binding-key #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9379_|
    (gx#make-syntax-quote 'binding-phi #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9380_|
    (gx#make-syntax-quote
     'binding-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9381_|
    (gx#make-syntax-quote
     'binding-key-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9382_|
    (gx#make-syntax-quote
     'binding-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9383_|
    (gx#make-syntax-quote
     'runtime-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9384_|
    (gx#make-syntax-quote
     'make-runtime-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9385_|
    (gx#make-syntax-quote
     'runtime-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9386_|
    (gx#make-syntax-quote 'binding #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9387_|
    (gx#make-syntax-quote
     'local-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9388_|
    (gx#make-syntax-quote
     'make-local-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9389_|
    (gx#make-syntax-quote
     'local-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9390_|
    (gx#make-syntax-quote
     'runtime-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9391_|
    (gx#make-syntax-quote
     'top-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9392_|
    (gx#make-syntax-quote
     'make-top-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9393_|
    (gx#make-syntax-quote 'top-binding? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9394_|
    (gx#make-syntax-quote
     'module-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9395_|
    (gx#make-syntax-quote
     'make-module-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9396_|
    (gx#make-syntax-quote
     'module-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9397_|
    (gx#make-syntax-quote
     'module-binding-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9398_|
    (gx#make-syntax-quote
     'module-binding-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9399_|
    (gx#make-syntax-quote 'top-binding #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9400_|
    (gx#make-syntax-quote
     'extern-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9401_|
    (gx#make-syntax-quote
     'make-extern-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9402_|
    (gx#make-syntax-quote
     'extern-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9403_|
    (gx#make-syntax-quote
     'syntax-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9404_|
    (gx#make-syntax-quote
     'make-syntax-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9405_|
    (gx#make-syntax-quote
     'syntax-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9406_|
    (gx#make-syntax-quote
     'syntax-binding-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9407_|
    (gx#make-syntax-quote
     'syntax-binding-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9408_|
    (gx#make-syntax-quote
     'import-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9409_|
    (gx#make-syntax-quote
     'make-import-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9410_|
    (gx#make-syntax-quote
     'import-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9411_|
    (gx#make-syntax-quote
     'import-binding-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9412_|
    (gx#make-syntax-quote
     'import-binding-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9413_|
    (gx#make-syntax-quote
     'import-binding-weak?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9414_|
    (gx#make-syntax-quote
     'import-binding-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9415_|
    (gx#make-syntax-quote
     'import-binding-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9416_|
    (gx#make-syntax-quote
     'import-binding-weak?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9417_|
    (gx#make-syntax-quote
     'alias-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9418_|
    (gx#make-syntax-quote
     'make-alias-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9419_|
    (gx#make-syntax-quote
     'alias-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9420_|
    (gx#make-syntax-quote
     'alias-binding-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9421_|
    (gx#make-syntax-quote
     'alias-binding-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9422_|
    (gx#make-syntax-quote 'expander::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9423_|
    (gx#make-syntax-quote 'make-expander #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9424_|
    (gx#make-syntax-quote 'expander? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9425_|
    (gx#make-syntax-quote 'expander-e #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9426_|
    (gx#make-syntax-quote
     'expander-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9427_|
    (gx#make-syntax-quote
     'core-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9428_|
    (gx#make-syntax-quote
     'make-core-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9429_|
    (gx#make-syntax-quote
     'core-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9430_|
    (gx#make-syntax-quote
     'core-expander-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9431_|
    (gx#make-syntax-quote
     'core-expander-compile-top
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9432_|
    (gx#make-syntax-quote
     'core-expander-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9433_|
    (gx#make-syntax-quote
     'core-expander-compile-top-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9434_|
    (gx#make-syntax-quote 'expander #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9435_|
    (gx#make-syntax-quote
     'expression-form::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9436_|
    (gx#make-syntax-quote
     'make-expression-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9437_|
    (gx#make-syntax-quote
     'expression-form?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9438_|
    (gx#make-syntax-quote 'core-expander #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9439_|
    (gx#make-syntax-quote
     'special-form::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9440_|
    (gx#make-syntax-quote
     'make-special-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9441_|
    (gx#make-syntax-quote 'special-form? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9442_|
    (gx#make-syntax-quote
     'definition-form::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9443_|
    (gx#make-syntax-quote
     'make-definition-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9444_|
    (gx#make-syntax-quote
     'definition-form?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9445_|
    (gx#make-syntax-quote 'special-form #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9446_|
    (gx#make-syntax-quote
     'top-special-form::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9447_|
    (gx#make-syntax-quote
     'make-top-special-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9448_|
    (gx#make-syntax-quote
     'top-special-form?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9449_|
    (gx#make-syntax-quote
     'module-special-form::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9450_|
    (gx#make-syntax-quote
     'make-module-special-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9451_|
    (gx#make-syntax-quote
     'module-special-form?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9452_|
    (gx#make-syntax-quote
     'top-special-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9453_|
    (gx#make-syntax-quote
     'feature-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9454_|
    (gx#make-syntax-quote
     'make-feature-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9455_|
    (gx#make-syntax-quote
     'feature-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9456_|
    (gx#make-syntax-quote
     'private-feature-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9457_|
    (gx#make-syntax-quote
     'make-private-feature-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9458_|
    (gx#make-syntax-quote
     'private-feature-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9459_|
    (gx#make-syntax-quote
     'feature-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9460_|
    (gx#make-syntax-quote
     'reserved-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9461_|
    (gx#make-syntax-quote
     'make-reserved-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9462_|
    (gx#make-syntax-quote
     'reserved-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9463_|
    (gx#make-syntax-quote
     'macro-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9464_|
    (gx#make-syntax-quote
     'make-macro-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9465_|
    (gx#make-syntax-quote
     'macro-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9466_|
    (gx#make-syntax-quote
     'rename-macro-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9467_|
    (gx#make-syntax-quote
     'make-rename-macro-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9468_|
    (gx#make-syntax-quote
     'rename-macro-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9469_|
    (gx#make-syntax-quote
     'macro-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9470_|
    (gx#make-syntax-quote
     'user-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9471_|
    (gx#make-syntax-quote
     'make-user-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9472_|
    (gx#make-syntax-quote
     'user-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9473_|
    (gx#make-syntax-quote
     'user-expander-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9474_|
    (gx#make-syntax-quote
     'user-expander-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9475_|
    (gx#make-syntax-quote
     'user-expander-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9476_|
    (gx#make-syntax-quote
     'user-expander-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9477_|
    (gx#make-syntax-quote
     'expander-mark::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9478_|
    (gx#make-syntax-quote
     'make-expander-mark
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9479_|
    (gx#make-syntax-quote
     'expander-mark?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9480_|
    (gx#make-syntax-quote
     'expander-mark-subst
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9481_|
    (gx#make-syntax-quote
     'expander-mark-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9482_|
    (gx#make-syntax-quote
     'expander-mark-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9483_|
    (gx#make-syntax-quote
     'expander-mark-trace
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9484_|
    (gx#make-syntax-quote
     'expander-mark-subst-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9485_|
    (gx#make-syntax-quote
     'expander-mark-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9486_|
    (gx#make-syntax-quote
     'expander-mark-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9487_|
    (gx#make-syntax-quote
     'expander-mark-trace-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9488_|
    (gx#make-syntax-quote
     'syntax-error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9489_|
    (gx#make-syntax-quote 'error::t #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9490_|
    (gx#make-syntax-quote
     'make-syntax-error
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9491_|
    (gx#make-syntax-quote 'syntax-error? #f (gx#current-expander-context) '()))
  (define |gx[1]#_g9492_|
    (gx#make-syntax-quote
     'syntax-error-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9493_|
    (gx#make-syntax-quote
     'syntax-error-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9494_|
    (gx#make-syntax-quote
     'syntax-error-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9495_|
    (gx#make-syntax-quote
     'syntax-error-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9496_|
    (gx#make-syntax-quote
     'syntax-error-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9497_|
    (gx#make-syntax-quote
     'syntax-error-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9498_|
    (gx#make-syntax-quote '<error> #f (gx#current-expander-context) '()))
  (begin
    (define |gx[:0:]#expander-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9322_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9322_|
                   (cons |gx[1]#_g9323_|
                         (cons |gx[1]#_g9324_|
                               (cons (cons |gx[1]#_g9325_|
                                           (cons |gx[1]#_g9326_| '()))
                                     (cons (cons |gx[1]#_g9327_|
                                                 (cons |gx[1]#_g9328_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expander-context::t
        '#f
        'expander-context
        ':init!
        '()
        '(id table))))
    (define |gx[:0:]#root-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9329_|
       'expander-identifiers:
       (cons |gx[1]#_g9322_|
             (cons |gx[1]#_g9329_|
                   (cons |gx[1]#_g9330_|
                         (cons |gx[1]#_g9331_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#root-context::t
        |gx[1]#_g9332_|
        'root-context
        '#f
        '()
        '())))
    (define |gx[:0:]#phi-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9333_|
       'expander-identifiers:
       (cons |gx[1]#_g9322_|
             (cons |gx[1]#_g9333_|
                   (cons |gx[1]#_g9334_|
                         (cons |gx[1]#_g9335_|
                               (cons (cons |gx[1]#_g9336_|
                                           (cons |gx[1]#_g9337_|
                                                 (cons |gx[1]#_g9338_| '())))
                                     (cons (cons |gx[1]#_g9339_|
                                                 (cons |gx[1]#_g9340_|
                                                       (cons |gx[1]#_g9341_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#context-phi::t
        |gx[1]#_g9332_|
        'phi-context
        '#f
        '()
        '(super up down))))
    (define |gx[:0:]#top-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9342_|
       'expander-identifiers:
       (cons |gx[1]#_g9333_|
             (cons |gx[1]#_g9342_|
                   (cons |gx[1]#_g9343_|
                         (cons |gx[1]#_g9344_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-context::t
        |gx[1]#_g9345_|
        'top-context
        '#f
        '()
        '())))
    (define |gx[:0:]#module-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9346_|
       'expander-identifiers:
       (cons |gx[1]#_g9342_|
             (cons |gx[1]#_g9346_|
                   (cons |gx[1]#_g9347_|
                         (cons |gx[1]#_g9348_|
                               (cons (cons |gx[1]#_g9349_|
                                           (cons |gx[1]#_g9350_|
                                                 (cons |gx[1]#_g9351_|
                                                       (cons |gx[1]#_g9352_|
                                                             (cons |gx[1]#_g9353_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g9354_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g9355_|
                                                 (cons |gx[1]#_g9356_|
                                                       (cons |gx[1]#_g9357_|
                                                             (cons |gx[1]#_g9358_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g9359_|
                                 (cons |gx[1]#_g9360_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-context::t
        |gx[1]#_g9361_|
        'module-context
        '#f
        '()
        '(ns path import export e code))))
    (define |gx[:0:]#prelude-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9362_|
       'expander-identifiers:
       (cons |gx[1]#_g9342_|
             (cons |gx[1]#_g9362_|
                   (cons |gx[1]#_g9363_|
                         (cons |gx[1]#_g9364_|
                               (cons (cons |gx[1]#_g9365_|
                                           (cons |gx[1]#_g9366_|
                                                 (cons |gx[1]#_g9367_| '())))
                                     (cons (cons |gx[1]#_g9368_|
                                                 (cons |gx[1]#_g9369_|
                                                       (cons |gx[1]#_g9370_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#prelude-context::t
        |gx[1]#_g9361_|
        'prelude-context
        '#f
        '()
        '(path import e))))
    (define |gx[:0:]#local-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9371_|
       'expander-identifiers:
       (cons |gx[1]#_g9333_|
             (cons |gx[1]#_g9371_|
                   (cons |gx[1]#_g9372_|
                         (cons |gx[1]#_g9373_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-context::t
        |gx[1]#_g9345_|
        'local-context
        '#f
        '()
        '())))
    (define |gx[:0:]#binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9374_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9374_|
                   (cons |gx[1]#_g9375_|
                         (cons |gx[1]#_g9376_|
                               (cons (cons |gx[1]#_g9377_|
                                           (cons |gx[1]#_g9378_|
                                                 (cons |gx[1]#_g9379_| '())))
                                     (cons (cons |gx[1]#_g9380_|
                                                 (cons |gx[1]#_g9381_|
                                                       (cons |gx[1]#_g9382_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#binding::t
        '#f
        'binding
        '#f
        '()
        '(id key phi))))
    (define |gx[:0:]#runtime-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9383_|
       'expander-identifiers:
       (cons |gx[1]#_g9374_|
             (cons |gx[1]#_g9383_|
                   (cons |gx[1]#_g9384_|
                         (cons |gx[1]#_g9385_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#runtime-binding::t
        |gx[1]#_g9386_|
        'runtime-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#local-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9387_|
       'expander-identifiers:
       (cons |gx[1]#_g9383_|
             (cons |gx[1]#_g9387_|
                   (cons |gx[1]#_g9388_|
                         (cons |gx[1]#_g9389_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-binding::t
        |gx[1]#_g9390_|
        'local-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#top-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9391_|
       'expander-identifiers:
       (cons |gx[1]#_g9383_|
             (cons |gx[1]#_g9391_|
                   (cons |gx[1]#_g9392_|
                         (cons |gx[1]#_g9393_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-binding::t
        |gx[1]#_g9390_|
        'top-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#module-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9394_|
       'expander-identifiers:
       (cons |gx[1]#_g9391_|
             (cons |gx[1]#_g9394_|
                   (cons |gx[1]#_g9395_|
                         (cons |gx[1]#_g9396_|
                               (cons (cons |gx[1]#_g9397_| '())
                                     (cons (cons |gx[1]#_g9398_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-binding::t
        |gx[1]#_g9399_|
        'module-binding
        '#f
        '()
        '(context))))
    (define |gx[:0:]#extern-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9400_|
       'expander-identifiers:
       (cons |gx[1]#_g9391_|
             (cons |gx[1]#_g9400_|
                   (cons |gx[1]#_g9401_|
                         (cons |gx[1]#_g9402_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#extern-binding::t
        |gx[1]#_g9399_|
        'extern-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#syntax-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9403_|
       'expander-identifiers:
       (cons |gx[1]#_g9374_|
             (cons |gx[1]#_g9403_|
                   (cons |gx[1]#_g9404_|
                         (cons |gx[1]#_g9405_|
                               (cons (cons |gx[1]#_g9406_| '())
                                     (cons (cons |gx[1]#_g9407_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-binding::t
        |gx[1]#_g9386_|
        'syntax-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#import-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9408_|
       'expander-identifiers:
       (cons |gx[1]#_g9374_|
             (cons |gx[1]#_g9408_|
                   (cons |gx[1]#_g9409_|
                         (cons |gx[1]#_g9410_|
                               (cons (cons |gx[1]#_g9411_|
                                           (cons |gx[1]#_g9412_|
                                                 (cons |gx[1]#_g9413_| '())))
                                     (cons (cons |gx[1]#_g9414_|
                                                 (cons |gx[1]#_g9415_|
                                                       (cons |gx[1]#_g9416_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-binding::t
        |gx[1]#_g9386_|
        'import-binding
        '#f
        '((final: . #t))
        '(e context weak?))))
    (define |gx[:0:]#alias-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9417_|
       'expander-identifiers:
       (cons |gx[1]#_g9374_|
             (cons |gx[1]#_g9417_|
                   (cons |gx[1]#_g9418_|
                         (cons |gx[1]#_g9419_|
                               (cons (cons |gx[1]#_g9420_| '())
                                     (cons (cons |gx[1]#_g9421_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#alias-binding::t
        |gx[1]#_g9386_|
        'alias-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9422_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9422_|
                   (cons |gx[1]#_g9423_|
                         (cons |gx[1]#_g9424_|
                               (cons (cons |gx[1]#_g9425_| '())
                                     (cons (cons |gx[1]#_g9426_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expander::t
        '#f
        'expander
        '#f
        '()
        '(e))))
    (define |gx[:0:]#core-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9427_|
       'expander-identifiers:
       (cons |gx[1]#_g9422_|
             (cons |gx[1]#_g9427_|
                   (cons |gx[1]#_g9428_|
                         (cons |gx[1]#_g9429_|
                               (cons (cons |gx[1]#_g9430_|
                                           (cons |gx[1]#_g9431_| '()))
                                     (cons (cons |gx[1]#_g9432_|
                                                 (cons |gx[1]#_g9433_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-expander::t
        |gx[1]#_g9434_|
        'core-expander
        '#f
        '()
        '(id compile-top))))
    (define |gx[:0:]#expression-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9435_|
       'expander-identifiers:
       (cons |gx[1]#_g9427_|
             (cons |gx[1]#_g9435_|
                   (cons |gx[1]#_g9436_|
                         (cons |gx[1]#_g9437_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expression-form::t
        |gx[1]#_g9438_|
        'expression-form
        '#f
        '()
        '())))
    (define |gx[:0:]#special-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9439_|
       'expander-identifiers:
       (cons |gx[1]#_g9427_|
             (cons |gx[1]#_g9439_|
                   (cons |gx[1]#_g9440_|
                         (cons |gx[1]#_g9441_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#special-form::t
        |gx[1]#_g9438_|
        'special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#definition-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9442_|
       'expander-identifiers:
       (cons |gx[1]#_g9439_|
             (cons |gx[1]#_g9442_|
                   (cons |gx[1]#_g9443_|
                         (cons |gx[1]#_g9444_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#definition-form::t
        |gx[1]#_g9445_|
        'definition-form
        '#f
        '()
        '())))
    (define |gx[:0:]#top-special-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9446_|
       'expander-identifiers:
       (cons |gx[1]#_g9439_|
             (cons |gx[1]#_g9446_|
                   (cons |gx[1]#_g9447_|
                         (cons |gx[1]#_g9448_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-special-form::t
        |gx[1]#_g9445_|
        'top-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#module-special-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9449_|
       'expander-identifiers:
       (cons |gx[1]#_g9446_|
             (cons |gx[1]#_g9449_|
                   (cons |gx[1]#_g9450_|
                         (cons |gx[1]#_g9451_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-special-form::t
        |gx[1]#_g9452_|
        'module-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#feature-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9453_|
       'expander-identifiers:
       (cons |gx[1]#_g9422_|
             (cons |gx[1]#_g9453_|
                   (cons |gx[1]#_g9454_|
                         (cons |gx[1]#_g9455_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#feature-expander::t
        |gx[1]#_g9434_|
        'feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#private-feature-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9456_|
       'expander-identifiers:
       (cons |gx[1]#_g9453_|
             (cons |gx[1]#_g9456_|
                   (cons |gx[1]#_g9457_|
                         (cons |gx[1]#_g9458_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#private-feature-expander::t
        |gx[1]#_g9459_|
        'private-feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#reserved-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9460_|
       'expander-identifiers:
       (cons |gx[1]#_g9422_|
             (cons |gx[1]#_g9460_|
                   (cons |gx[1]#_g9461_|
                         (cons |gx[1]#_g9462_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#reserved-expander::t
        |gx[1]#_g9434_|
        'reserved-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#macro-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9463_|
       'expander-identifiers:
       (cons |gx[1]#_g9422_|
             (cons |gx[1]#_g9463_|
                   (cons |gx[1]#_g9464_|
                         (cons |gx[1]#_g9465_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-macro::t
        |gx[1]#_g9434_|
        'macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#rename-macro-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9466_|
       'expander-identifiers:
       (cons |gx[1]#_g9463_|
             (cons |gx[1]#_g9466_|
                   (cons |gx[1]#_g9467_|
                         (cons |gx[1]#_g9468_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#rename-macro-expander::t
        |gx[1]#_g9469_|
        'rename-macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#user-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9470_|
       'expander-identifiers:
       (cons |gx[1]#_g9463_|
             (cons |gx[1]#_g9470_|
                   (cons |gx[1]#_g9471_|
                         (cons |gx[1]#_g9472_|
                               (cons (cons |gx[1]#_g9473_|
                                           (cons |gx[1]#_g9474_| '()))
                                     (cons (cons |gx[1]#_g9475_|
                                                 (cons |gx[1]#_g9476_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#macro-expander::t
        |gx[1]#_g9469_|
        'user-expander
        '#f
        '()
        '(context phi))))
    (define |gx[:0:]#expander-mark|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9477_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9477_|
                   (cons |gx[1]#_g9478_|
                         (cons |gx[1]#_g9479_|
                               (cons (cons |gx[1]#_g9480_|
                                           (cons |gx[1]#_g9481_|
                                                 (cons |gx[1]#_g9482_|
                                                       (cons |gx[1]#_g9483_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g9484_|
                                                 (cons |gx[1]#_g9485_|
                                                       (cons |gx[1]#_g9486_|
                                                             (cons |gx[1]#_g9487_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expander-mark::t
        '#f
        'expander-mark
        '#f
        '()
        '(subst context phi trace))))
    (define |gx[:0:]#syntax-error|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9488_|
       'expander-identifiers:
       (cons |gx[1]#_g9489_|
             (cons |gx[1]#_g9488_|
                   (cons |gx[1]#_g9490_|
                         (cons |gx[1]#_g9491_|
                               (cons (cons |gx[1]#_g9492_|
                                           (cons |gx[1]#_g9493_|
                                                 (cons |gx[1]#_g9494_| '())))
                                     (cons (cons |gx[1]#_g9495_|
                                                 (cons |gx[1]#_g9496_|
                                                       (cons |gx[1]#_g9497_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-error::t
        |gx[1]#_g9498_|
        'syntax-error
        '#f
        '()
        '(context marks phi))))))
