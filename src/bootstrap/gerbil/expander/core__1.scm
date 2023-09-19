(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g9381_|
    (##structure
     gx#syntax-quote::t
     'expander-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9382_|
    (##structure
     gx#syntax-quote::t
     'make-expander-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9383_|
    (##structure
     gx#syntax-quote::t
     'expander-context?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9384_|
    (##structure
     gx#syntax-quote::t
     'expander-context-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9385_|
    (##structure
     gx#syntax-quote::t
     'expander-context-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9386_|
    (##structure
     gx#syntax-quote::t
     'expander-context-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9387_|
    (##structure
     gx#syntax-quote::t
     'expander-context-table-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9388_|
    (##structure
     gx#syntax-quote::t
     'root-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9389_|
    (##structure
     gx#syntax-quote::t
     'make-root-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9390_|
    (##structure
     gx#syntax-quote::t
     'root-context?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9391_|
    (##structure
     gx#syntax-quote::t
     'expander-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9392_|
    (##structure
     gx#syntax-quote::t
     'phi-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9393_|
    (##structure
     gx#syntax-quote::t
     'make-phi-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9394_|
    (##structure
     gx#syntax-quote::t
     'phi-context?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9395_|
    (##structure
     gx#syntax-quote::t
     'phi-context-super
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9396_|
    (##structure
     gx#syntax-quote::t
     'phi-context-up
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9397_|
    (##structure
     gx#syntax-quote::t
     'phi-context-down
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9398_|
    (##structure
     gx#syntax-quote::t
     'phi-context-super-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9399_|
    (##structure
     gx#syntax-quote::t
     'phi-context-up-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9400_|
    (##structure
     gx#syntax-quote::t
     'phi-context-down-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9401_|
    (##structure
     gx#syntax-quote::t
     'top-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9402_|
    (##structure
     gx#syntax-quote::t
     'make-top-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9403_|
    (##structure
     gx#syntax-quote::t
     'top-context?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9404_|
    (##structure
     gx#syntax-quote::t
     'phi-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9405_|
    (##structure
     gx#syntax-quote::t
     'module-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9406_|
    (##structure
     gx#syntax-quote::t
     'make-module-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9407_|
    (##structure
     gx#syntax-quote::t
     'module-context?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9408_|
    (##structure
     gx#syntax-quote::t
     'module-context-ns
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9409_|
    (##structure
     gx#syntax-quote::t
     'module-context-path
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9410_|
    (##structure
     gx#syntax-quote::t
     'module-context-import
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9411_|
    (##structure
     gx#syntax-quote::t
     'module-context-export
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9412_|
    (##structure
     gx#syntax-quote::t
     'module-context-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9413_|
    (##structure
     gx#syntax-quote::t
     'module-context-code
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9414_|
    (##structure
     gx#syntax-quote::t
     'module-context-ns-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9415_|
    (##structure
     gx#syntax-quote::t
     'module-context-path-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9416_|
    (##structure
     gx#syntax-quote::t
     'module-context-import-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9417_|
    (##structure
     gx#syntax-quote::t
     'module-context-export-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9418_|
    (##structure
     gx#syntax-quote::t
     'module-context-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9419_|
    (##structure
     gx#syntax-quote::t
     'module-context-code-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9420_|
    (##structure
     gx#syntax-quote::t
     'top-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9421_|
    (##structure
     gx#syntax-quote::t
     'prelude-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9422_|
    (##structure
     gx#syntax-quote::t
     'make-prelude-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9423_|
    (##structure
     gx#syntax-quote::t
     'prelude-context?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9424_|
    (##structure
     gx#syntax-quote::t
     'prelude-context-path
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9425_|
    (##structure
     gx#syntax-quote::t
     'prelude-context-import
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9426_|
    (##structure
     gx#syntax-quote::t
     'prelude-context-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9427_|
    (##structure
     gx#syntax-quote::t
     'prelude-context-path-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9428_|
    (##structure
     gx#syntax-quote::t
     'prelude-context-import-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9429_|
    (##structure
     gx#syntax-quote::t
     'prelude-context-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9430_|
    (##structure
     gx#syntax-quote::t
     'local-context::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9431_|
    (##structure
     gx#syntax-quote::t
     'make-local-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9432_|
    (##structure
     gx#syntax-quote::t
     'local-context?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9433_|
    (##structure
     gx#syntax-quote::t
     'binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9434_|
    (##structure
     gx#syntax-quote::t
     'make-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9435_|
    (##structure
     gx#syntax-quote::t
     'binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9436_|
    (##structure
     gx#syntax-quote::t
     'binding-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9437_|
    (##structure
     gx#syntax-quote::t
     'binding-key
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9438_|
    (##structure
     gx#syntax-quote::t
     'binding-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9439_|
    (##structure
     gx#syntax-quote::t
     'binding-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9440_|
    (##structure
     gx#syntax-quote::t
     'binding-key-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9441_|
    (##structure
     gx#syntax-quote::t
     'binding-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9442_|
    (##structure
     gx#syntax-quote::t
     'runtime-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9443_|
    (##structure
     gx#syntax-quote::t
     'make-runtime-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9444_|
    (##structure
     gx#syntax-quote::t
     'runtime-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9445_|
    (##structure
     gx#syntax-quote::t
     'binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9446_|
    (##structure
     gx#syntax-quote::t
     'local-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9447_|
    (##structure
     gx#syntax-quote::t
     'make-local-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9448_|
    (##structure
     gx#syntax-quote::t
     'local-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9449_|
    (##structure
     gx#syntax-quote::t
     'runtime-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9450_|
    (##structure
     gx#syntax-quote::t
     'top-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9451_|
    (##structure
     gx#syntax-quote::t
     'make-top-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9452_|
    (##structure
     gx#syntax-quote::t
     'top-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9453_|
    (##structure
     gx#syntax-quote::t
     'module-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9454_|
    (##structure
     gx#syntax-quote::t
     'make-module-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9455_|
    (##structure
     gx#syntax-quote::t
     'module-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9456_|
    (##structure
     gx#syntax-quote::t
     'module-binding-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9457_|
    (##structure
     gx#syntax-quote::t
     'module-binding-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9458_|
    (##structure
     gx#syntax-quote::t
     'top-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9459_|
    (##structure
     gx#syntax-quote::t
     'extern-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9460_|
    (##structure
     gx#syntax-quote::t
     'make-extern-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9461_|
    (##structure
     gx#syntax-quote::t
     'extern-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9462_|
    (##structure
     gx#syntax-quote::t
     'syntax-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9463_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9464_|
    (##structure
     gx#syntax-quote::t
     'syntax-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9465_|
    (##structure
     gx#syntax-quote::t
     'syntax-binding-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9466_|
    (##structure
     gx#syntax-quote::t
     'syntax-binding-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9467_|
    (##structure
     gx#syntax-quote::t
     'import-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9468_|
    (##structure
     gx#syntax-quote::t
     'make-import-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9469_|
    (##structure
     gx#syntax-quote::t
     'import-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9470_|
    (##structure
     gx#syntax-quote::t
     'import-binding-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9471_|
    (##structure
     gx#syntax-quote::t
     'import-binding-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9472_|
    (##structure
     gx#syntax-quote::t
     'import-binding-weak?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9473_|
    (##structure
     gx#syntax-quote::t
     'import-binding-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9474_|
    (##structure
     gx#syntax-quote::t
     'import-binding-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9475_|
    (##structure
     gx#syntax-quote::t
     'import-binding-weak?-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9476_|
    (##structure
     gx#syntax-quote::t
     'alias-binding::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9477_|
    (##structure
     gx#syntax-quote::t
     'make-alias-binding
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9478_|
    (##structure
     gx#syntax-quote::t
     'alias-binding?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9479_|
    (##structure
     gx#syntax-quote::t
     'alias-binding-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9480_|
    (##structure
     gx#syntax-quote::t
     'alias-binding-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9481_|
    (##structure
     gx#syntax-quote::t
     'expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9482_|
    (##structure
     gx#syntax-quote::t
     'make-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9483_|
    (##structure
     gx#syntax-quote::t
     'expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9484_|
    (##structure
     gx#syntax-quote::t
     'expander-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9485_|
    (##structure
     gx#syntax-quote::t
     'expander-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9486_|
    (##structure
     gx#syntax-quote::t
     'core-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9487_|
    (##structure
     gx#syntax-quote::t
     'make-core-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9488_|
    (##structure
     gx#syntax-quote::t
     'core-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9489_|
    (##structure
     gx#syntax-quote::t
     'core-expander-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9490_|
    (##structure
     gx#syntax-quote::t
     'core-expander-compile-top
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9491_|
    (##structure
     gx#syntax-quote::t
     'core-expander-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9492_|
    (##structure
     gx#syntax-quote::t
     'core-expander-compile-top-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9493_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9494_|
    (##structure
     gx#syntax-quote::t
     'expression-form::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9495_|
    (##structure
     gx#syntax-quote::t
     'make-expression-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9496_|
    (##structure
     gx#syntax-quote::t
     'expression-form?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9497_|
    (##structure
     gx#syntax-quote::t
     'core-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9498_|
    (##structure
     gx#syntax-quote::t
     'special-form::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9499_|
    (##structure
     gx#syntax-quote::t
     'make-special-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9500_|
    (##structure
     gx#syntax-quote::t
     'special-form?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9501_|
    (##structure
     gx#syntax-quote::t
     'definition-form::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9502_|
    (##structure
     gx#syntax-quote::t
     'make-definition-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9503_|
    (##structure
     gx#syntax-quote::t
     'definition-form?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9504_|
    (##structure
     gx#syntax-quote::t
     'special-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9505_|
    (##structure
     gx#syntax-quote::t
     'top-special-form::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9506_|
    (##structure
     gx#syntax-quote::t
     'make-top-special-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9507_|
    (##structure
     gx#syntax-quote::t
     'top-special-form?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9508_|
    (##structure
     gx#syntax-quote::t
     'module-special-form::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9509_|
    (##structure
     gx#syntax-quote::t
     'make-module-special-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9510_|
    (##structure
     gx#syntax-quote::t
     'module-special-form?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9511_|
    (##structure
     gx#syntax-quote::t
     'top-special-form
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9512_|
    (##structure
     gx#syntax-quote::t
     'feature-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9513_|
    (##structure
     gx#syntax-quote::t
     'make-feature-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9514_|
    (##structure
     gx#syntax-quote::t
     'feature-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9515_|
    (##structure
     gx#syntax-quote::t
     'private-feature-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9516_|
    (##structure
     gx#syntax-quote::t
     'make-private-feature-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9517_|
    (##structure
     gx#syntax-quote::t
     'private-feature-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9518_|
    (##structure
     gx#syntax-quote::t
     'feature-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9519_|
    (##structure
     gx#syntax-quote::t
     'reserved-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9520_|
    (##structure
     gx#syntax-quote::t
     'make-reserved-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9521_|
    (##structure
     gx#syntax-quote::t
     'reserved-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9522_|
    (##structure
     gx#syntax-quote::t
     'macro-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9523_|
    (##structure
     gx#syntax-quote::t
     'make-macro-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9524_|
    (##structure
     gx#syntax-quote::t
     'macro-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9525_|
    (##structure
     gx#syntax-quote::t
     'rename-macro-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9526_|
    (##structure
     gx#syntax-quote::t
     'make-rename-macro-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9527_|
    (##structure
     gx#syntax-quote::t
     'rename-macro-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9528_|
    (##structure
     gx#syntax-quote::t
     'macro-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9529_|
    (##structure
     gx#syntax-quote::t
     'user-expander::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9530_|
    (##structure
     gx#syntax-quote::t
     'make-user-expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9531_|
    (##structure
     gx#syntax-quote::t
     'user-expander?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9532_|
    (##structure
     gx#syntax-quote::t
     'user-expander-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9533_|
    (##structure
     gx#syntax-quote::t
     'user-expander-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9534_|
    (##structure
     gx#syntax-quote::t
     'user-expander-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9535_|
    (##structure
     gx#syntax-quote::t
     'user-expander-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9536_|
    (##structure
     gx#syntax-quote::t
     'expander-mark::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9537_|
    (##structure
     gx#syntax-quote::t
     'make-expander-mark
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9538_|
    (##structure
     gx#syntax-quote::t
     'expander-mark?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9539_|
    (##structure
     gx#syntax-quote::t
     'expander-mark-subst
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9540_|
    (##structure
     gx#syntax-quote::t
     'expander-mark-context
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9541_|
    (##structure
     gx#syntax-quote::t
     'expander-mark-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9542_|
    (##structure
     gx#syntax-quote::t
     'expander-mark-trace
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9543_|
    (##structure
     gx#syntax-quote::t
     'expander-mark-subst-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9544_|
    (##structure
     gx#syntax-quote::t
     'expander-mark-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9545_|
    (##structure
     gx#syntax-quote::t
     'expander-mark-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g9546_|
    (##structure
     gx#syntax-quote::t
     'expander-mark-trace-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#expander-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9381_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9381_|
                   (cons |gx[1]#_g9382_|
                         (cons |gx[1]#_g9383_|
                               (cons (cons |gx[1]#_g9384_|
                                           (cons |gx[1]#_g9385_| '()))
                                     (cons (cons |gx[1]#_g9386_|
                                                 (cons |gx[1]#_g9387_| '()))
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
       |gx[1]#_g9388_|
       'expander-identifiers:
       (cons |gx[1]#_g9381_|
             (cons |gx[1]#_g9388_|
                   (cons |gx[1]#_g9389_|
                         (cons |gx[1]#_g9390_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#root-context::t
        |gx[1]#_g9391_|
        'root-context
        '#f
        '()
        '())))
    (define |gx[:0:]#phi-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9392_|
       'expander-identifiers:
       (cons |gx[1]#_g9381_|
             (cons |gx[1]#_g9392_|
                   (cons |gx[1]#_g9393_|
                         (cons |gx[1]#_g9394_|
                               (cons (cons |gx[1]#_g9395_|
                                           (cons |gx[1]#_g9396_|
                                                 (cons |gx[1]#_g9397_| '())))
                                     (cons (cons |gx[1]#_g9398_|
                                                 (cons |gx[1]#_g9399_|
                                                       (cons |gx[1]#_g9400_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#context-phi::t
        |gx[1]#_g9391_|
        'phi-context
        '#f
        '()
        '(super up down))))
    (define |gx[:0:]#top-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9401_|
       'expander-identifiers:
       (cons |gx[1]#_g9392_|
             (cons |gx[1]#_g9401_|
                   (cons |gx[1]#_g9402_|
                         (cons |gx[1]#_g9403_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-context::t
        |gx[1]#_g9404_|
        'top-context
        '#f
        '()
        '())))
    (define |gx[:0:]#module-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9405_|
       'expander-identifiers:
       (cons |gx[1]#_g9401_|
             (cons |gx[1]#_g9405_|
                   (cons |gx[1]#_g9406_|
                         (cons |gx[1]#_g9407_|
                               (cons (cons |gx[1]#_g9408_|
                                           (cons |gx[1]#_g9409_|
                                                 (cons |gx[1]#_g9410_|
                                                       (cons |gx[1]#_g9411_|
                                                             (cons |gx[1]#_g9412_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g9413_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g9414_|
                                                 (cons |gx[1]#_g9415_|
                                                       (cons |gx[1]#_g9416_|
                                                             (cons |gx[1]#_g9417_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g9418_|
                                 (cons |gx[1]#_g9419_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-context::t
        |gx[1]#_g9420_|
        'module-context
        '#f
        '()
        '(ns path import export e code))))
    (define |gx[:0:]#prelude-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9421_|
       'expander-identifiers:
       (cons |gx[1]#_g9401_|
             (cons |gx[1]#_g9421_|
                   (cons |gx[1]#_g9422_|
                         (cons |gx[1]#_g9423_|
                               (cons (cons |gx[1]#_g9424_|
                                           (cons |gx[1]#_g9425_|
                                                 (cons |gx[1]#_g9426_| '())))
                                     (cons (cons |gx[1]#_g9427_|
                                                 (cons |gx[1]#_g9428_|
                                                       (cons |gx[1]#_g9429_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#prelude-context::t
        |gx[1]#_g9420_|
        'prelude-context
        '#f
        '()
        '(path import e))))
    (define |gx[:0:]#local-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9430_|
       'expander-identifiers:
       (cons |gx[1]#_g9392_|
             (cons |gx[1]#_g9430_|
                   (cons |gx[1]#_g9431_|
                         (cons |gx[1]#_g9432_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-context::t
        |gx[1]#_g9404_|
        'local-context
        '#f
        '()
        '())))
    (define |gx[:0:]#binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9433_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9433_|
                   (cons |gx[1]#_g9434_|
                         (cons |gx[1]#_g9435_|
                               (cons (cons |gx[1]#_g9436_|
                                           (cons |gx[1]#_g9437_|
                                                 (cons |gx[1]#_g9438_| '())))
                                     (cons (cons |gx[1]#_g9439_|
                                                 (cons |gx[1]#_g9440_|
                                                       (cons |gx[1]#_g9441_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#binding::t
        '#f
        'binding
        '#f
        '((transparent: . #t))
        '(id key phi))))
    (define |gx[:0:]#runtime-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9442_|
       'expander-identifiers:
       (cons |gx[1]#_g9433_|
             (cons |gx[1]#_g9442_|
                   (cons |gx[1]#_g9443_|
                         (cons |gx[1]#_g9444_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#runtime-binding::t
        |gx[1]#_g9445_|
        'runtime-binding
        '#f
        '((transparent: . #t))
        '())))
    (define |gx[:0:]#local-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9446_|
       'expander-identifiers:
       (cons |gx[1]#_g9442_|
             (cons |gx[1]#_g9446_|
                   (cons |gx[1]#_g9447_|
                         (cons |gx[1]#_g9448_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-binding::t
        |gx[1]#_g9449_|
        'local-binding
        '#f
        '((transparent: . #t))
        '())))
    (define |gx[:0:]#top-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9450_|
       'expander-identifiers:
       (cons |gx[1]#_g9442_|
             (cons |gx[1]#_g9450_|
                   (cons |gx[1]#_g9451_|
                         (cons |gx[1]#_g9452_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-binding::t
        |gx[1]#_g9449_|
        'top-binding
        '#f
        '((transparent: . #t))
        '())))
    (define |gx[:0:]#module-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9453_|
       'expander-identifiers:
       (cons |gx[1]#_g9450_|
             (cons |gx[1]#_g9453_|
                   (cons |gx[1]#_g9454_|
                         (cons |gx[1]#_g9455_|
                               (cons (cons |gx[1]#_g9456_| '())
                                     (cons (cons |gx[1]#_g9457_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-binding::t
        |gx[1]#_g9458_|
        'module-binding
        '#f
        '((transparent: . #t))
        '(context))))
    (define |gx[:0:]#extern-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9459_|
       'expander-identifiers:
       (cons |gx[1]#_g9450_|
             (cons |gx[1]#_g9459_|
                   (cons |gx[1]#_g9460_|
                         (cons |gx[1]#_g9461_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#extern-binding::t
        |gx[1]#_g9458_|
        'extern-binding
        '#f
        '((transparent: . #t))
        '())))
    (define |gx[:0:]#syntax-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9462_|
       'expander-identifiers:
       (cons |gx[1]#_g9433_|
             (cons |gx[1]#_g9462_|
                   (cons |gx[1]#_g9463_|
                         (cons |gx[1]#_g9464_|
                               (cons (cons |gx[1]#_g9465_| '())
                                     (cons (cons |gx[1]#_g9466_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-binding::t
        |gx[1]#_g9445_|
        'syntax-binding
        '#f
        '((final: . #t) (transparent: . #t))
        '(e))))
    (define |gx[:0:]#import-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9467_|
       'expander-identifiers:
       (cons |gx[1]#_g9433_|
             (cons |gx[1]#_g9467_|
                   (cons |gx[1]#_g9468_|
                         (cons |gx[1]#_g9469_|
                               (cons (cons |gx[1]#_g9470_|
                                           (cons |gx[1]#_g9471_|
                                                 (cons |gx[1]#_g9472_| '())))
                                     (cons (cons |gx[1]#_g9473_|
                                                 (cons |gx[1]#_g9474_|
                                                       (cons |gx[1]#_g9475_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-binding::t
        |gx[1]#_g9445_|
        'import-binding
        '#f
        '((final: . #t) (transparent: . #t))
        '(e context weak?))))
    (define |gx[:0:]#alias-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9476_|
       'expander-identifiers:
       (cons |gx[1]#_g9433_|
             (cons |gx[1]#_g9476_|
                   (cons |gx[1]#_g9477_|
                         (cons |gx[1]#_g9478_|
                               (cons (cons |gx[1]#_g9479_| '())
                                     (cons (cons |gx[1]#_g9480_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#alias-binding::t
        |gx[1]#_g9445_|
        'alias-binding
        '#f
        '((final: . #t) (transparent: . #t))
        '(e))))
    (define |gx[:0:]#expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9481_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9481_|
                   (cons |gx[1]#_g9482_|
                         (cons |gx[1]#_g9483_|
                               (cons (cons |gx[1]#_g9484_| '())
                                     (cons (cons |gx[1]#_g9485_| '()) '()))))))
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
       |gx[1]#_g9486_|
       'expander-identifiers:
       (cons |gx[1]#_g9481_|
             (cons |gx[1]#_g9486_|
                   (cons |gx[1]#_g9487_|
                         (cons |gx[1]#_g9488_|
                               (cons (cons |gx[1]#_g9489_|
                                           (cons |gx[1]#_g9490_| '()))
                                     (cons (cons |gx[1]#_g9491_|
                                                 (cons |gx[1]#_g9492_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-expander::t
        |gx[1]#_g9493_|
        'core-expander
        '#f
        '()
        '(id compile-top))))
    (define |gx[:0:]#expression-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9494_|
       'expander-identifiers:
       (cons |gx[1]#_g9486_|
             (cons |gx[1]#_g9494_|
                   (cons |gx[1]#_g9495_|
                         (cons |gx[1]#_g9496_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expression-form::t
        |gx[1]#_g9497_|
        'expression-form
        '#f
        '()
        '())))
    (define |gx[:0:]#special-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9498_|
       'expander-identifiers:
       (cons |gx[1]#_g9486_|
             (cons |gx[1]#_g9498_|
                   (cons |gx[1]#_g9499_|
                         (cons |gx[1]#_g9500_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#special-form::t
        |gx[1]#_g9497_|
        'special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#definition-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9501_|
       'expander-identifiers:
       (cons |gx[1]#_g9498_|
             (cons |gx[1]#_g9501_|
                   (cons |gx[1]#_g9502_|
                         (cons |gx[1]#_g9503_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#definition-form::t
        |gx[1]#_g9504_|
        'definition-form
        '#f
        '()
        '())))
    (define |gx[:0:]#top-special-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9505_|
       'expander-identifiers:
       (cons |gx[1]#_g9498_|
             (cons |gx[1]#_g9505_|
                   (cons |gx[1]#_g9506_|
                         (cons |gx[1]#_g9507_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-special-form::t
        |gx[1]#_g9504_|
        'top-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#module-special-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9508_|
       'expander-identifiers:
       (cons |gx[1]#_g9505_|
             (cons |gx[1]#_g9508_|
                   (cons |gx[1]#_g9509_|
                         (cons |gx[1]#_g9510_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-special-form::t
        |gx[1]#_g9511_|
        'module-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#feature-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9512_|
       'expander-identifiers:
       (cons |gx[1]#_g9481_|
             (cons |gx[1]#_g9512_|
                   (cons |gx[1]#_g9513_|
                         (cons |gx[1]#_g9514_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#feature-expander::t
        |gx[1]#_g9493_|
        'feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#private-feature-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9515_|
       'expander-identifiers:
       (cons |gx[1]#_g9512_|
             (cons |gx[1]#_g9515_|
                   (cons |gx[1]#_g9516_|
                         (cons |gx[1]#_g9517_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#private-feature-expander::t
        |gx[1]#_g9518_|
        'private-feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#reserved-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9519_|
       'expander-identifiers:
       (cons |gx[1]#_g9481_|
             (cons |gx[1]#_g9519_|
                   (cons |gx[1]#_g9520_|
                         (cons |gx[1]#_g9521_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#reserved-expander::t
        |gx[1]#_g9493_|
        'reserved-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#macro-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9522_|
       'expander-identifiers:
       (cons |gx[1]#_g9481_|
             (cons |gx[1]#_g9522_|
                   (cons |gx[1]#_g9523_|
                         (cons |gx[1]#_g9524_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-macro::t
        |gx[1]#_g9493_|
        'macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#rename-macro-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9525_|
       'expander-identifiers:
       (cons |gx[1]#_g9522_|
             (cons |gx[1]#_g9525_|
                   (cons |gx[1]#_g9526_|
                         (cons |gx[1]#_g9527_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#rename-macro-expander::t
        |gx[1]#_g9528_|
        'rename-macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#user-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9529_|
       'expander-identifiers:
       (cons |gx[1]#_g9522_|
             (cons |gx[1]#_g9529_|
                   (cons |gx[1]#_g9530_|
                         (cons |gx[1]#_g9531_|
                               (cons (cons |gx[1]#_g9532_|
                                           (cons |gx[1]#_g9533_| '()))
                                     (cons (cons |gx[1]#_g9534_|
                                                 (cons |gx[1]#_g9535_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#macro-expander::t
        |gx[1]#_g9528_|
        'user-expander
        '#f
        '()
        '(context phi))))
    (define |gx[:0:]#expander-mark|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g9536_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g9536_|
                   (cons |gx[1]#_g9537_|
                         (cons |gx[1]#_g9538_|
                               (cons (cons |gx[1]#_g9539_|
                                           (cons |gx[1]#_g9540_|
                                                 (cons |gx[1]#_g9541_|
                                                       (cons |gx[1]#_g9542_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g9543_|
                                                 (cons |gx[1]#_g9544_|
                                                       (cons |gx[1]#_g9545_|
                                                             (cons |gx[1]#_g9546_|
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
    (define |gx[:0:]#&phi-context?|
      (lambda (_$stx6333_)
        (let* ((_g63376351_
                (lambda (_g63386347_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g63386347_)))
               (_g63366393_
                (lambda (_g63386355_)
                  (if (gx#stx-pair? _g63386355_)
                      (let ((_e63406358_ (gx#syntax-e _g63386355_)))
                        (let ((_hd63416362_
                               (let ()
                                 (declare (not safe))
                                 (##car _e63406358_)))
                              (_tl63426365_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e63406358_))))
                          (if (gx#stx-pair? _tl63426365_)
                              (let ((_e63436368_ (gx#syntax-e _tl63426365_)))
                                (let ((_hd63446372_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e63436368_)))
                                      (_tl63456375_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e63436368_))))
                                  (if (gx#stx-null? _tl63456375_)
                                      ((lambda (_L6378_)
                                         (cons (gx#datum->syntax__0 '#f 'fx>)
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            '##vector-length)
                                                           (cons _L6378_ '()))
                                                     (cons '3 '()))))
                                       _hd63446372_)
                                      (_g63376351_ _g63386355_))))
                              (_g63376351_ _g63386355_))))
                      (_g63376351_ _g63386355_)))))
          (_g63366393_ _$stx6333_))))))
