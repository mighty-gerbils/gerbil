(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g4422_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g4423_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g4424_| (gx#core-quote-syntax 'make-expander-context))
  (define |gx[1]#_g4425_| (gx#core-quote-syntax 'expander-context?))
  (define |gx[1]#_g4426_| (gx#core-quote-syntax 'expander-context-id))
  (define |gx[1]#_g4427_| (gx#core-quote-syntax 'expander-context-table))
  (define |gx[1]#_g4428_| (gx#core-quote-syntax 'expander-context-id-set!))
  (define |gx[1]#_g4429_| (gx#core-quote-syntax 'expander-context-table-set!))
  (define |gx[1]#_g4430_| (gx#core-quote-syntax 'root-context::t))
  (define |gx[1]#_g4431_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g4432_| (gx#core-quote-syntax 'root-context::t))
  (define |gx[1]#_g4433_| (gx#core-quote-syntax 'make-root-context))
  (define |gx[1]#_g4434_| (gx#core-quote-syntax 'root-context?))
  (define |gx[1]#_g4435_| (gx#core-quote-syntax 'expander-context))
  (define |gx[1]#_g4436_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g4437_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g4438_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g4439_| (gx#core-quote-syntax 'make-phi-context))
  (define |gx[1]#_g4440_| (gx#core-quote-syntax 'phi-context?))
  (define |gx[1]#_g4441_| (gx#core-quote-syntax 'phi-context-super))
  (define |gx[1]#_g4442_| (gx#core-quote-syntax 'phi-context-up))
  (define |gx[1]#_g4443_| (gx#core-quote-syntax 'phi-context-down))
  (define |gx[1]#_g4444_| (gx#core-quote-syntax 'phi-context-super-set!))
  (define |gx[1]#_g4445_| (gx#core-quote-syntax 'phi-context-up-set!))
  (define |gx[1]#_g4446_| (gx#core-quote-syntax 'phi-context-down-set!))
  (define |gx[1]#_g4447_| (gx#core-quote-syntax 'expander-context))
  (define |gx[1]#_g4448_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g4449_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g4450_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g4451_| (gx#core-quote-syntax 'make-top-context))
  (define |gx[1]#_g4452_| (gx#core-quote-syntax 'top-context?))
  (define |gx[1]#_g4453_| (gx#core-quote-syntax 'phi-context))
  (define |gx[1]#_g4454_| (gx#core-quote-syntax 'module-context::t))
  (define |gx[1]#_g4455_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g4456_| (gx#core-quote-syntax 'module-context::t))
  (define |gx[1]#_g4457_| (gx#core-quote-syntax 'make-module-context))
  (define |gx[1]#_g4458_| (gx#core-quote-syntax 'module-context?))
  (define |gx[1]#_g4459_| (gx#core-quote-syntax 'module-context-ns))
  (define |gx[1]#_g4460_| (gx#core-quote-syntax 'module-context-path))
  (define |gx[1]#_g4461_| (gx#core-quote-syntax 'module-context-import))
  (define |gx[1]#_g4462_| (gx#core-quote-syntax 'module-context-export))
  (define |gx[1]#_g4463_| (gx#core-quote-syntax 'module-context-e))
  (define |gx[1]#_g4464_| (gx#core-quote-syntax 'module-context-code))
  (define |gx[1]#_g4465_| (gx#core-quote-syntax 'module-context-ns-set!))
  (define |gx[1]#_g4466_| (gx#core-quote-syntax 'module-context-path-set!))
  (define |gx[1]#_g4467_| (gx#core-quote-syntax 'module-context-import-set!))
  (define |gx[1]#_g4468_| (gx#core-quote-syntax 'module-context-export-set!))
  (define |gx[1]#_g4469_| (gx#core-quote-syntax 'module-context-e-set!))
  (define |gx[1]#_g4470_| (gx#core-quote-syntax 'module-context-code-set!))
  (define |gx[1]#_g4471_| (gx#core-quote-syntax 'top-context))
  (define |gx[1]#_g4472_| (gx#core-quote-syntax 'prelude-context::t))
  (define |gx[1]#_g4473_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g4474_| (gx#core-quote-syntax 'prelude-context::t))
  (define |gx[1]#_g4475_| (gx#core-quote-syntax 'make-prelude-context))
  (define |gx[1]#_g4476_| (gx#core-quote-syntax 'prelude-context?))
  (define |gx[1]#_g4477_| (gx#core-quote-syntax 'prelude-context-path))
  (define |gx[1]#_g4478_| (gx#core-quote-syntax 'prelude-context-import))
  (define |gx[1]#_g4479_| (gx#core-quote-syntax 'prelude-context-e))
  (define |gx[1]#_g4480_| (gx#core-quote-syntax 'prelude-context-path-set!))
  (define |gx[1]#_g4481_| (gx#core-quote-syntax 'prelude-context-import-set!))
  (define |gx[1]#_g4482_| (gx#core-quote-syntax 'prelude-context-e-set!))
  (define |gx[1]#_g4483_| (gx#core-quote-syntax 'top-context))
  (define |gx[1]#_g4484_| (gx#core-quote-syntax 'local-context::t))
  (define |gx[1]#_g4485_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g4486_| (gx#core-quote-syntax 'local-context::t))
  (define |gx[1]#_g4487_| (gx#core-quote-syntax 'make-local-context))
  (define |gx[1]#_g4488_| (gx#core-quote-syntax 'local-context?))
  (define |gx[1]#_g4489_| (gx#core-quote-syntax 'phi-context))
  (define |gx[1]#_g4490_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g4491_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g4492_| (gx#core-quote-syntax 'make-binding))
  (define |gx[1]#_g4493_| (gx#core-quote-syntax 'binding?))
  (define |gx[1]#_g4494_| (gx#core-quote-syntax 'binding-id))
  (define |gx[1]#_g4495_| (gx#core-quote-syntax 'binding-key))
  (define |gx[1]#_g4496_| (gx#core-quote-syntax 'binding-phi))
  (define |gx[1]#_g4497_| (gx#core-quote-syntax 'binding-id-set!))
  (define |gx[1]#_g4498_| (gx#core-quote-syntax 'binding-key-set!))
  (define |gx[1]#_g4499_| (gx#core-quote-syntax 'binding-phi-set!))
  (define |gx[1]#_g4500_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g4501_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g4502_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g4503_| (gx#core-quote-syntax 'make-runtime-binding))
  (define |gx[1]#_g4504_| (gx#core-quote-syntax 'runtime-binding?))
  (define |gx[1]#_g4505_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g4506_| (gx#core-quote-syntax 'local-binding::t))
  (define |gx[1]#_g4507_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g4508_| (gx#core-quote-syntax 'local-binding::t))
  (define |gx[1]#_g4509_| (gx#core-quote-syntax 'make-local-binding))
  (define |gx[1]#_g4510_| (gx#core-quote-syntax 'local-binding?))
  (define |gx[1]#_g4511_| (gx#core-quote-syntax 'runtime-binding))
  (define |gx[1]#_g4512_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g4513_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g4514_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g4515_| (gx#core-quote-syntax 'make-top-binding))
  (define |gx[1]#_g4516_| (gx#core-quote-syntax 'top-binding?))
  (define |gx[1]#_g4517_| (gx#core-quote-syntax 'runtime-binding))
  (define |gx[1]#_g4518_| (gx#core-quote-syntax 'module-binding::t))
  (define |gx[1]#_g4519_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g4520_| (gx#core-quote-syntax 'module-binding::t))
  (define |gx[1]#_g4521_| (gx#core-quote-syntax 'make-module-binding))
  (define |gx[1]#_g4522_| (gx#core-quote-syntax 'module-binding?))
  (define |gx[1]#_g4523_| (gx#core-quote-syntax 'module-binding-context))
  (define |gx[1]#_g4524_| (gx#core-quote-syntax 'module-binding-context-set!))
  (define |gx[1]#_g4525_| (gx#core-quote-syntax 'top-binding))
  (define |gx[1]#_g4526_| (gx#core-quote-syntax 'extern-binding::t))
  (define |gx[1]#_g4527_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g4528_| (gx#core-quote-syntax 'extern-binding::t))
  (define |gx[1]#_g4529_| (gx#core-quote-syntax 'make-extern-binding))
  (define |gx[1]#_g4530_| (gx#core-quote-syntax 'extern-binding?))
  (define |gx[1]#_g4531_| (gx#core-quote-syntax 'top-binding))
  (define |gx[1]#_g4532_| (gx#core-quote-syntax 'syntax-binding::t))
  (define |gx[1]#_g4533_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g4534_| (gx#core-quote-syntax 'syntax-binding::t))
  (define |gx[1]#_g4535_| (gx#core-quote-syntax 'make-syntax-binding))
  (define |gx[1]#_g4536_| (gx#core-quote-syntax 'syntax-binding?))
  (define |gx[1]#_g4537_| (gx#core-quote-syntax 'syntax-binding-e))
  (define |gx[1]#_g4538_| (gx#core-quote-syntax 'syntax-binding-e-set!))
  (define |gx[1]#_g4539_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g4540_| (gx#core-quote-syntax 'import-binding::t))
  (define |gx[1]#_g4541_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g4542_| (gx#core-quote-syntax 'import-binding::t))
  (define |gx[1]#_g4543_| (gx#core-quote-syntax 'make-import-binding))
  (define |gx[1]#_g4544_| (gx#core-quote-syntax 'import-binding?))
  (define |gx[1]#_g4545_| (gx#core-quote-syntax 'import-binding-e))
  (define |gx[1]#_g4546_| (gx#core-quote-syntax 'import-binding-context))
  (define |gx[1]#_g4547_| (gx#core-quote-syntax 'import-binding-weak?))
  (define |gx[1]#_g4548_| (gx#core-quote-syntax 'import-binding-e-set!))
  (define |gx[1]#_g4549_| (gx#core-quote-syntax 'import-binding-context-set!))
  (define |gx[1]#_g4550_| (gx#core-quote-syntax 'import-binding-weak?-set!))
  (define |gx[1]#_g4551_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g4552_| (gx#core-quote-syntax 'alias-binding::t))
  (define |gx[1]#_g4553_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g4554_| (gx#core-quote-syntax 'alias-binding::t))
  (define |gx[1]#_g4555_| (gx#core-quote-syntax 'make-alias-binding))
  (define |gx[1]#_g4556_| (gx#core-quote-syntax 'alias-binding?))
  (define |gx[1]#_g4557_| (gx#core-quote-syntax 'alias-binding-e))
  (define |gx[1]#_g4558_| (gx#core-quote-syntax 'alias-binding-e-set!))
  (define |gx[1]#_g4559_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g4560_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g4561_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g4562_| (gx#core-quote-syntax 'make-expander))
  (define |gx[1]#_g4563_| (gx#core-quote-syntax 'expander?))
  (define |gx[1]#_g4564_| (gx#core-quote-syntax 'expander-e))
  (define |gx[1]#_g4565_| (gx#core-quote-syntax 'expander-e-set!))
  (define |gx[1]#_g4566_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g4567_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g4568_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g4569_| (gx#core-quote-syntax 'make-core-expander))
  (define |gx[1]#_g4570_| (gx#core-quote-syntax 'core-expander?))
  (define |gx[1]#_g4571_| (gx#core-quote-syntax 'core-expander-id))
  (define |gx[1]#_g4572_| (gx#core-quote-syntax 'core-expander-compile-top))
  (define |gx[1]#_g4573_| (gx#core-quote-syntax 'core-expander-id-set!))
  (define |gx[1]#_g4574_|
    (gx#core-quote-syntax 'core-expander-compile-top-set!))
  (define |gx[1]#_g4575_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g4576_| (gx#core-quote-syntax 'expression-form::t))
  (define |gx[1]#_g4577_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g4578_| (gx#core-quote-syntax 'expression-form::t))
  (define |gx[1]#_g4579_| (gx#core-quote-syntax 'make-expression-form))
  (define |gx[1]#_g4580_| (gx#core-quote-syntax 'expression-form?))
  (define |gx[1]#_g4581_| (gx#core-quote-syntax 'core-expander))
  (define |gx[1]#_g4582_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g4583_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g4584_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g4585_| (gx#core-quote-syntax 'make-special-form))
  (define |gx[1]#_g4586_| (gx#core-quote-syntax 'special-form?))
  (define |gx[1]#_g4587_| (gx#core-quote-syntax 'core-expander))
  (define |gx[1]#_g4588_| (gx#core-quote-syntax 'definition-form::t))
  (define |gx[1]#_g4589_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g4590_| (gx#core-quote-syntax 'definition-form::t))
  (define |gx[1]#_g4591_| (gx#core-quote-syntax 'make-definition-form))
  (define |gx[1]#_g4592_| (gx#core-quote-syntax 'definition-form?))
  (define |gx[1]#_g4593_| (gx#core-quote-syntax 'special-form))
  (define |gx[1]#_g4594_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g4595_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g4596_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g4597_| (gx#core-quote-syntax 'make-top-special-form))
  (define |gx[1]#_g4598_| (gx#core-quote-syntax 'top-special-form?))
  (define |gx[1]#_g4599_| (gx#core-quote-syntax 'special-form))
  (define |gx[1]#_g4600_| (gx#core-quote-syntax 'module-special-form::t))
  (define |gx[1]#_g4601_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g4602_| (gx#core-quote-syntax 'module-special-form::t))
  (define |gx[1]#_g4603_| (gx#core-quote-syntax 'make-module-special-form))
  (define |gx[1]#_g4604_| (gx#core-quote-syntax 'module-special-form?))
  (define |gx[1]#_g4605_| (gx#core-quote-syntax 'top-special-form))
  (define |gx[1]#_g4606_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g4607_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g4608_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g4609_| (gx#core-quote-syntax 'make-feature-expander))
  (define |gx[1]#_g4610_| (gx#core-quote-syntax 'feature-expander?))
  (define |gx[1]#_g4611_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g4612_| (gx#core-quote-syntax 'private-feature-expander::t))
  (define |gx[1]#_g4613_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g4614_| (gx#core-quote-syntax 'private-feature-expander::t))
  (define |gx[1]#_g4615_|
    (gx#core-quote-syntax 'make-private-feature-expander))
  (define |gx[1]#_g4616_| (gx#core-quote-syntax 'private-feature-expander?))
  (define |gx[1]#_g4617_| (gx#core-quote-syntax 'feature-expander))
  (define |gx[1]#_g4618_| (gx#core-quote-syntax 'reserved-expander::t))
  (define |gx[1]#_g4619_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g4620_| (gx#core-quote-syntax 'reserved-expander::t))
  (define |gx[1]#_g4621_| (gx#core-quote-syntax 'make-reserved-expander))
  (define |gx[1]#_g4622_| (gx#core-quote-syntax 'reserved-expander?))
  (define |gx[1]#_g4623_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g4624_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g4625_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g4626_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g4627_| (gx#core-quote-syntax 'make-macro-expander))
  (define |gx[1]#_g4628_| (gx#core-quote-syntax 'macro-expander?))
  (define |gx[1]#_g4629_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g4630_| (gx#core-quote-syntax 'rename-macro-expander::t))
  (define |gx[1]#_g4631_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g4632_| (gx#core-quote-syntax 'rename-macro-expander::t))
  (define |gx[1]#_g4633_| (gx#core-quote-syntax 'make-rename-macro-expander))
  (define |gx[1]#_g4634_| (gx#core-quote-syntax 'rename-macro-expander?))
  (define |gx[1]#_g4635_| (gx#core-quote-syntax 'macro-expander))
  (define |gx[1]#_g4636_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g4637_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g4638_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g4639_| (gx#core-quote-syntax 'make-user-expander))
  (define |gx[1]#_g4640_| (gx#core-quote-syntax 'user-expander?))
  (define |gx[1]#_g4641_| (gx#core-quote-syntax 'user-expander-context))
  (define |gx[1]#_g4642_| (gx#core-quote-syntax 'user-expander-phi))
  (define |gx[1]#_g4643_| (gx#core-quote-syntax 'user-expander-context-set!))
  (define |gx[1]#_g4644_| (gx#core-quote-syntax 'user-expander-phi-set!))
  (define |gx[1]#_g4645_| (gx#core-quote-syntax 'macro-expander))
  (define |gx[1]#_g4646_| (gx#core-quote-syntax 'expander-mark::t))
  (define |gx[1]#_g4647_| (gx#core-quote-syntax 'expander-mark::t))
  (define |gx[1]#_g4648_| (gx#core-quote-syntax 'make-expander-mark))
  (define |gx[1]#_g4649_| (gx#core-quote-syntax 'expander-mark?))
  (define |gx[1]#_g4650_| (gx#core-quote-syntax 'expander-mark-subst))
  (define |gx[1]#_g4651_| (gx#core-quote-syntax 'expander-mark-context))
  (define |gx[1]#_g4652_| (gx#core-quote-syntax 'expander-mark-phi))
  (define |gx[1]#_g4653_| (gx#core-quote-syntax 'expander-mark-trace))
  (define |gx[1]#_g4654_| (gx#core-quote-syntax 'expander-mark-subst-set!))
  (define |gx[1]#_g4655_| (gx#core-quote-syntax 'expander-mark-context-set!))
  (define |gx[1]#_g4656_| (gx#core-quote-syntax 'expander-mark-phi-set!))
  (define |gx[1]#_g4657_| (gx#core-quote-syntax 'expander-mark-trace-set!))
  (define |gx[1]#_g4658_| (gx#core-quote-syntax 'syntax-error::t))
  (define |gx[1]#_g4659_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g4660_| (gx#core-quote-syntax 'syntax-error::t))
  (define |gx[1]#_g4661_| (gx#core-quote-syntax 'make-syntax-error))
  (define |gx[1]#_g4662_| (gx#core-quote-syntax 'syntax-error?))
  (define |gx[1]#_g4663_| (gx#core-quote-syntax 'syntax-error-context))
  (define |gx[1]#_g4664_| (gx#core-quote-syntax 'syntax-error-marks))
  (define |gx[1]#_g4665_| (gx#core-quote-syntax 'syntax-error-phi))
  (define |gx[1]#_g4666_| (gx#core-quote-syntax 'syntax-error-context-set!))
  (define |gx[1]#_g4667_| (gx#core-quote-syntax 'syntax-error-marks-set!))
  (define |gx[1]#_g4668_| (gx#core-quote-syntax 'syntax-error-phi-set!))
  (define |gx[1]#_g4669_| (gx#core-quote-syntax '<error>))
  (begin
    (define |gx[:0:]#expander-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4422_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g4423_|
                   (cons |gx[1]#_g4424_|
                         (cons |gx[1]#_g4425_|
                               (cons (cons |gx[1]#_g4426_|
                                           (cons |gx[1]#_g4427_| '()))
                                     (cons (cons |gx[1]#_g4428_|
                                                 (cons |gx[1]#_g4429_| '()))
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
       |gx[1]#_g4430_|
       'expander-identifiers:
       (cons |gx[1]#_g4431_|
             (cons |gx[1]#_g4432_|
                   (cons |gx[1]#_g4433_|
                         (cons |gx[1]#_g4434_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#root-context::t
        |gx[1]#_g4435_|
        'root-context
        '#f
        '()
        '())))
    (define |gx[:0:]#phi-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4436_|
       'expander-identifiers:
       (cons |gx[1]#_g4437_|
             (cons |gx[1]#_g4438_|
                   (cons |gx[1]#_g4439_|
                         (cons |gx[1]#_g4440_|
                               (cons (cons |gx[1]#_g4441_|
                                           (cons |gx[1]#_g4442_|
                                                 (cons |gx[1]#_g4443_| '())))
                                     (cons (cons |gx[1]#_g4444_|
                                                 (cons |gx[1]#_g4445_|
                                                       (cons |gx[1]#_g4446_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#context-phi::t
        |gx[1]#_g4447_|
        'phi-context
        '#f
        '()
        '(super up down))))
    (define |gx[:0:]#top-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4448_|
       'expander-identifiers:
       (cons |gx[1]#_g4449_|
             (cons |gx[1]#_g4450_|
                   (cons |gx[1]#_g4451_|
                         (cons |gx[1]#_g4452_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-context::t
        |gx[1]#_g4453_|
        'top-context
        '#f
        '()
        '())))
    (define |gx[:0:]#module-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4454_|
       'expander-identifiers:
       (cons |gx[1]#_g4455_|
             (cons |gx[1]#_g4456_|
                   (cons |gx[1]#_g4457_|
                         (cons |gx[1]#_g4458_|
                               (cons (cons |gx[1]#_g4459_|
                                           (cons |gx[1]#_g4460_|
                                                 (cons |gx[1]#_g4461_|
                                                       (cons |gx[1]#_g4462_|
                                                             (cons |gx[1]#_g4463_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g4464_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g4465_|
                                                 (cons |gx[1]#_g4466_|
                                                       (cons |gx[1]#_g4467_|
                                                             (cons |gx[1]#_g4468_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g4469_|
                                 (cons |gx[1]#_g4470_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-context::t
        |gx[1]#_g4471_|
        'module-context
        '#f
        '()
        '(ns path import export e code))))
    (define |gx[:0:]#prelude-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4472_|
       'expander-identifiers:
       (cons |gx[1]#_g4473_|
             (cons |gx[1]#_g4474_|
                   (cons |gx[1]#_g4475_|
                         (cons |gx[1]#_g4476_|
                               (cons (cons |gx[1]#_g4477_|
                                           (cons |gx[1]#_g4478_|
                                                 (cons |gx[1]#_g4479_| '())))
                                     (cons (cons |gx[1]#_g4480_|
                                                 (cons |gx[1]#_g4481_|
                                                       (cons |gx[1]#_g4482_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#prelude-context::t
        |gx[1]#_g4483_|
        'prelude-context
        '#f
        '()
        '(path import e))))
    (define |gx[:0:]#local-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4484_|
       'expander-identifiers:
       (cons |gx[1]#_g4485_|
             (cons |gx[1]#_g4486_|
                   (cons |gx[1]#_g4487_|
                         (cons |gx[1]#_g4488_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-context::t
        |gx[1]#_g4489_|
        'local-context
        '#f
        '()
        '())))
    (define |gx[:0:]#binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4490_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g4491_|
                   (cons |gx[1]#_g4492_|
                         (cons |gx[1]#_g4493_|
                               (cons (cons |gx[1]#_g4494_|
                                           (cons |gx[1]#_g4495_|
                                                 (cons |gx[1]#_g4496_| '())))
                                     (cons (cons |gx[1]#_g4497_|
                                                 (cons |gx[1]#_g4498_|
                                                       (cons |gx[1]#_g4499_|
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
       |gx[1]#_g4500_|
       'expander-identifiers:
       (cons |gx[1]#_g4501_|
             (cons |gx[1]#_g4502_|
                   (cons |gx[1]#_g4503_|
                         (cons |gx[1]#_g4504_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#runtime-binding::t
        |gx[1]#_g4505_|
        'runtime-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#local-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4506_|
       'expander-identifiers:
       (cons |gx[1]#_g4507_|
             (cons |gx[1]#_g4508_|
                   (cons |gx[1]#_g4509_|
                         (cons |gx[1]#_g4510_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-binding::t
        |gx[1]#_g4511_|
        'local-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#top-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4512_|
       'expander-identifiers:
       (cons |gx[1]#_g4513_|
             (cons |gx[1]#_g4514_|
                   (cons |gx[1]#_g4515_|
                         (cons |gx[1]#_g4516_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-binding::t
        |gx[1]#_g4517_|
        'top-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#module-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4518_|
       'expander-identifiers:
       (cons |gx[1]#_g4519_|
             (cons |gx[1]#_g4520_|
                   (cons |gx[1]#_g4521_|
                         (cons |gx[1]#_g4522_|
                               (cons (cons |gx[1]#_g4523_| '())
                                     (cons (cons |gx[1]#_g4524_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-binding::t
        |gx[1]#_g4525_|
        'module-binding
        '#f
        '()
        '(context))))
    (define |gx[:0:]#extern-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4526_|
       'expander-identifiers:
       (cons |gx[1]#_g4527_|
             (cons |gx[1]#_g4528_|
                   (cons |gx[1]#_g4529_|
                         (cons |gx[1]#_g4530_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#extern-binding::t
        |gx[1]#_g4531_|
        'extern-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#syntax-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4532_|
       'expander-identifiers:
       (cons |gx[1]#_g4533_|
             (cons |gx[1]#_g4534_|
                   (cons |gx[1]#_g4535_|
                         (cons |gx[1]#_g4536_|
                               (cons (cons |gx[1]#_g4537_| '())
                                     (cons (cons |gx[1]#_g4538_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-binding::t
        |gx[1]#_g4539_|
        'syntax-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#import-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4540_|
       'expander-identifiers:
       (cons |gx[1]#_g4541_|
             (cons |gx[1]#_g4542_|
                   (cons |gx[1]#_g4543_|
                         (cons |gx[1]#_g4544_|
                               (cons (cons |gx[1]#_g4545_|
                                           (cons |gx[1]#_g4546_|
                                                 (cons |gx[1]#_g4547_| '())))
                                     (cons (cons |gx[1]#_g4548_|
                                                 (cons |gx[1]#_g4549_|
                                                       (cons |gx[1]#_g4550_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-binding::t
        |gx[1]#_g4551_|
        'import-binding
        '#f
        '((final: . #t))
        '(e context weak?))))
    (define |gx[:0:]#alias-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4552_|
       'expander-identifiers:
       (cons |gx[1]#_g4553_|
             (cons |gx[1]#_g4554_|
                   (cons |gx[1]#_g4555_|
                         (cons |gx[1]#_g4556_|
                               (cons (cons |gx[1]#_g4557_| '())
                                     (cons (cons |gx[1]#_g4558_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#alias-binding::t
        |gx[1]#_g4559_|
        'alias-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4560_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g4561_|
                   (cons |gx[1]#_g4562_|
                         (cons |gx[1]#_g4563_|
                               (cons (cons |gx[1]#_g4564_| '())
                                     (cons (cons |gx[1]#_g4565_| '()) '()))))))
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
       |gx[1]#_g4566_|
       'expander-identifiers:
       (cons |gx[1]#_g4567_|
             (cons |gx[1]#_g4568_|
                   (cons |gx[1]#_g4569_|
                         (cons |gx[1]#_g4570_|
                               (cons (cons |gx[1]#_g4571_|
                                           (cons |gx[1]#_g4572_| '()))
                                     (cons (cons |gx[1]#_g4573_|
                                                 (cons |gx[1]#_g4574_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-expander::t
        |gx[1]#_g4575_|
        'core-expander
        '#f
        '()
        '(id compile-top))))
    (define |gx[:0:]#expression-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4576_|
       'expander-identifiers:
       (cons |gx[1]#_g4577_|
             (cons |gx[1]#_g4578_|
                   (cons |gx[1]#_g4579_|
                         (cons |gx[1]#_g4580_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expression-form::t
        |gx[1]#_g4581_|
        'expression-form
        '#f
        '()
        '())))
    (define |gx[:0:]#special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4582_|
       'expander-identifiers:
       (cons |gx[1]#_g4583_|
             (cons |gx[1]#_g4584_|
                   (cons |gx[1]#_g4585_|
                         (cons |gx[1]#_g4586_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#special-form::t
        |gx[1]#_g4587_|
        'special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#definition-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4588_|
       'expander-identifiers:
       (cons |gx[1]#_g4589_|
             (cons |gx[1]#_g4590_|
                   (cons |gx[1]#_g4591_|
                         (cons |gx[1]#_g4592_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#definition-form::t
        |gx[1]#_g4593_|
        'definition-form
        '#f
        '()
        '())))
    (define |gx[:0:]#top-special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4594_|
       'expander-identifiers:
       (cons |gx[1]#_g4595_|
             (cons |gx[1]#_g4596_|
                   (cons |gx[1]#_g4597_|
                         (cons |gx[1]#_g4598_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-special-form::t
        |gx[1]#_g4599_|
        'top-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#module-special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4600_|
       'expander-identifiers:
       (cons |gx[1]#_g4601_|
             (cons |gx[1]#_g4602_|
                   (cons |gx[1]#_g4603_|
                         (cons |gx[1]#_g4604_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-special-form::t
        |gx[1]#_g4605_|
        'module-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#feature-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4606_|
       'expander-identifiers:
       (cons |gx[1]#_g4607_|
             (cons |gx[1]#_g4608_|
                   (cons |gx[1]#_g4609_|
                         (cons |gx[1]#_g4610_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#feature-expander::t
        |gx[1]#_g4611_|
        'feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#private-feature-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4612_|
       'expander-identifiers:
       (cons |gx[1]#_g4613_|
             (cons |gx[1]#_g4614_|
                   (cons |gx[1]#_g4615_|
                         (cons |gx[1]#_g4616_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#private-feature-expander::t
        |gx[1]#_g4617_|
        'private-feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#reserved-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4618_|
       'expander-identifiers:
       (cons |gx[1]#_g4619_|
             (cons |gx[1]#_g4620_|
                   (cons |gx[1]#_g4621_|
                         (cons |gx[1]#_g4622_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#reserved-expander::t
        |gx[1]#_g4623_|
        'reserved-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#macro-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4624_|
       'expander-identifiers:
       (cons |gx[1]#_g4625_|
             (cons |gx[1]#_g4626_|
                   (cons |gx[1]#_g4627_|
                         (cons |gx[1]#_g4628_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-macro::t
        |gx[1]#_g4629_|
        'macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#rename-macro-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4630_|
       'expander-identifiers:
       (cons |gx[1]#_g4631_|
             (cons |gx[1]#_g4632_|
                   (cons |gx[1]#_g4633_|
                         (cons |gx[1]#_g4634_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#rename-macro-expander::t
        |gx[1]#_g4635_|
        'rename-macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#user-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4636_|
       'expander-identifiers:
       (cons |gx[1]#_g4637_|
             (cons |gx[1]#_g4638_|
                   (cons |gx[1]#_g4639_|
                         (cons |gx[1]#_g4640_|
                               (cons (cons |gx[1]#_g4641_|
                                           (cons |gx[1]#_g4642_| '()))
                                     (cons (cons |gx[1]#_g4643_|
                                                 (cons |gx[1]#_g4644_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#macro-expander::t
        |gx[1]#_g4645_|
        'user-expander
        '#f
        '()
        '(context phi))))
    (define |gx[:0:]#expander-mark|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4646_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g4647_|
                   (cons |gx[1]#_g4648_|
                         (cons |gx[1]#_g4649_|
                               (cons (cons |gx[1]#_g4650_|
                                           (cons |gx[1]#_g4651_|
                                                 (cons |gx[1]#_g4652_|
                                                       (cons |gx[1]#_g4653_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g4654_|
                                                 (cons |gx[1]#_g4655_|
                                                       (cons |gx[1]#_g4656_|
                                                             (cons |gx[1]#_g4657_|
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
       |gx[1]#_g4658_|
       'expander-identifiers:
       (cons |gx[1]#_g4659_|
             (cons |gx[1]#_g4660_|
                   (cons |gx[1]#_g4661_|
                         (cons |gx[1]#_g4662_|
                               (cons (cons |gx[1]#_g4663_|
                                           (cons |gx[1]#_g4664_|
                                                 (cons |gx[1]#_g4665_| '())))
                                     (cons (cons |gx[1]#_g4666_|
                                                 (cons |gx[1]#_g4667_|
                                                       (cons |gx[1]#_g4668_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-error::t
        |gx[1]#_g4669_|
        'syntax-error
        '#f
        '()
        '(context marks phi))))))
