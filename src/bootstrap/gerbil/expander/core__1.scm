(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g4484_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g4485_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g4486_| (gx#core-quote-syntax 'make-expander-context))
  (define |gx[1]#_g4487_| (gx#core-quote-syntax 'expander-context?))
  (define |gx[1]#_g4488_| (gx#core-quote-syntax 'expander-context-id))
  (define |gx[1]#_g4489_| (gx#core-quote-syntax 'expander-context-table))
  (define |gx[1]#_g4490_| (gx#core-quote-syntax 'expander-context-id-set!))
  (define |gx[1]#_g4491_| (gx#core-quote-syntax 'expander-context-table-set!))
  (define |gx[1]#_g4492_| (gx#core-quote-syntax 'root-context::t))
  (define |gx[1]#_g4493_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g4494_| (gx#core-quote-syntax 'root-context::t))
  (define |gx[1]#_g4495_| (gx#core-quote-syntax 'make-root-context))
  (define |gx[1]#_g4496_| (gx#core-quote-syntax 'root-context?))
  (define |gx[1]#_g4497_| (gx#core-quote-syntax 'expander-context))
  (define |gx[1]#_g4498_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g4499_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g4500_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g4501_| (gx#core-quote-syntax 'make-phi-context))
  (define |gx[1]#_g4502_| (gx#core-quote-syntax 'phi-context?))
  (define |gx[1]#_g4503_| (gx#core-quote-syntax 'phi-context-super))
  (define |gx[1]#_g4504_| (gx#core-quote-syntax 'phi-context-up))
  (define |gx[1]#_g4505_| (gx#core-quote-syntax 'phi-context-down))
  (define |gx[1]#_g4506_| (gx#core-quote-syntax 'phi-context-super-set!))
  (define |gx[1]#_g4507_| (gx#core-quote-syntax 'phi-context-up-set!))
  (define |gx[1]#_g4508_| (gx#core-quote-syntax 'phi-context-down-set!))
  (define |gx[1]#_g4509_| (gx#core-quote-syntax 'expander-context))
  (define |gx[1]#_g4510_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g4511_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g4512_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g4513_| (gx#core-quote-syntax 'make-top-context))
  (define |gx[1]#_g4514_| (gx#core-quote-syntax 'top-context?))
  (define |gx[1]#_g4515_| (gx#core-quote-syntax 'phi-context))
  (define |gx[1]#_g4516_| (gx#core-quote-syntax 'module-context::t))
  (define |gx[1]#_g4517_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g4518_| (gx#core-quote-syntax 'module-context::t))
  (define |gx[1]#_g4519_| (gx#core-quote-syntax 'make-module-context))
  (define |gx[1]#_g4520_| (gx#core-quote-syntax 'module-context?))
  (define |gx[1]#_g4521_| (gx#core-quote-syntax 'module-context-ns))
  (define |gx[1]#_g4522_| (gx#core-quote-syntax 'module-context-path))
  (define |gx[1]#_g4523_| (gx#core-quote-syntax 'module-context-import))
  (define |gx[1]#_g4524_| (gx#core-quote-syntax 'module-context-export))
  (define |gx[1]#_g4525_| (gx#core-quote-syntax 'module-context-e))
  (define |gx[1]#_g4526_| (gx#core-quote-syntax 'module-context-code))
  (define |gx[1]#_g4527_| (gx#core-quote-syntax 'module-context-ns-set!))
  (define |gx[1]#_g4528_| (gx#core-quote-syntax 'module-context-path-set!))
  (define |gx[1]#_g4529_| (gx#core-quote-syntax 'module-context-import-set!))
  (define |gx[1]#_g4530_| (gx#core-quote-syntax 'module-context-export-set!))
  (define |gx[1]#_g4531_| (gx#core-quote-syntax 'module-context-e-set!))
  (define |gx[1]#_g4532_| (gx#core-quote-syntax 'module-context-code-set!))
  (define |gx[1]#_g4533_| (gx#core-quote-syntax 'top-context))
  (define |gx[1]#_g4534_| (gx#core-quote-syntax 'prelude-context::t))
  (define |gx[1]#_g4535_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g4536_| (gx#core-quote-syntax 'prelude-context::t))
  (define |gx[1]#_g4537_| (gx#core-quote-syntax 'make-prelude-context))
  (define |gx[1]#_g4538_| (gx#core-quote-syntax 'prelude-context?))
  (define |gx[1]#_g4539_| (gx#core-quote-syntax 'prelude-context-path))
  (define |gx[1]#_g4540_| (gx#core-quote-syntax 'prelude-context-import))
  (define |gx[1]#_g4541_| (gx#core-quote-syntax 'prelude-context-e))
  (define |gx[1]#_g4542_| (gx#core-quote-syntax 'prelude-context-path-set!))
  (define |gx[1]#_g4543_| (gx#core-quote-syntax 'prelude-context-import-set!))
  (define |gx[1]#_g4544_| (gx#core-quote-syntax 'prelude-context-e-set!))
  (define |gx[1]#_g4545_| (gx#core-quote-syntax 'top-context))
  (define |gx[1]#_g4546_| (gx#core-quote-syntax 'local-context::t))
  (define |gx[1]#_g4547_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g4548_| (gx#core-quote-syntax 'local-context::t))
  (define |gx[1]#_g4549_| (gx#core-quote-syntax 'make-local-context))
  (define |gx[1]#_g4550_| (gx#core-quote-syntax 'local-context?))
  (define |gx[1]#_g4551_| (gx#core-quote-syntax 'phi-context))
  (define |gx[1]#_g4552_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g4553_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g4554_| (gx#core-quote-syntax 'make-binding))
  (define |gx[1]#_g4555_| (gx#core-quote-syntax 'binding?))
  (define |gx[1]#_g4556_| (gx#core-quote-syntax 'binding-id))
  (define |gx[1]#_g4557_| (gx#core-quote-syntax 'binding-key))
  (define |gx[1]#_g4558_| (gx#core-quote-syntax 'binding-phi))
  (define |gx[1]#_g4559_| (gx#core-quote-syntax 'binding-id-set!))
  (define |gx[1]#_g4560_| (gx#core-quote-syntax 'binding-key-set!))
  (define |gx[1]#_g4561_| (gx#core-quote-syntax 'binding-phi-set!))
  (define |gx[1]#_g4562_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g4563_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g4564_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g4565_| (gx#core-quote-syntax 'make-runtime-binding))
  (define |gx[1]#_g4566_| (gx#core-quote-syntax 'runtime-binding?))
  (define |gx[1]#_g4567_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g4568_| (gx#core-quote-syntax 'local-binding::t))
  (define |gx[1]#_g4569_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g4570_| (gx#core-quote-syntax 'local-binding::t))
  (define |gx[1]#_g4571_| (gx#core-quote-syntax 'make-local-binding))
  (define |gx[1]#_g4572_| (gx#core-quote-syntax 'local-binding?))
  (define |gx[1]#_g4573_| (gx#core-quote-syntax 'runtime-binding))
  (define |gx[1]#_g4574_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g4575_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g4576_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g4577_| (gx#core-quote-syntax 'make-top-binding))
  (define |gx[1]#_g4578_| (gx#core-quote-syntax 'top-binding?))
  (define |gx[1]#_g4579_| (gx#core-quote-syntax 'runtime-binding))
  (define |gx[1]#_g4580_| (gx#core-quote-syntax 'module-binding::t))
  (define |gx[1]#_g4581_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g4582_| (gx#core-quote-syntax 'module-binding::t))
  (define |gx[1]#_g4583_| (gx#core-quote-syntax 'make-module-binding))
  (define |gx[1]#_g4584_| (gx#core-quote-syntax 'module-binding?))
  (define |gx[1]#_g4585_| (gx#core-quote-syntax 'module-binding-context))
  (define |gx[1]#_g4586_| (gx#core-quote-syntax 'module-binding-context-set!))
  (define |gx[1]#_g4587_| (gx#core-quote-syntax 'top-binding))
  (define |gx[1]#_g4588_| (gx#core-quote-syntax 'extern-binding::t))
  (define |gx[1]#_g4589_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g4590_| (gx#core-quote-syntax 'extern-binding::t))
  (define |gx[1]#_g4591_| (gx#core-quote-syntax 'make-extern-binding))
  (define |gx[1]#_g4592_| (gx#core-quote-syntax 'extern-binding?))
  (define |gx[1]#_g4593_| (gx#core-quote-syntax 'top-binding))
  (define |gx[1]#_g4594_| (gx#core-quote-syntax 'syntax-binding::t))
  (define |gx[1]#_g4595_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g4596_| (gx#core-quote-syntax 'syntax-binding::t))
  (define |gx[1]#_g4597_| (gx#core-quote-syntax 'make-syntax-binding))
  (define |gx[1]#_g4598_| (gx#core-quote-syntax 'syntax-binding?))
  (define |gx[1]#_g4599_| (gx#core-quote-syntax 'syntax-binding-e))
  (define |gx[1]#_g4600_| (gx#core-quote-syntax 'syntax-binding-e-set!))
  (define |gx[1]#_g4601_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g4602_| (gx#core-quote-syntax 'import-binding::t))
  (define |gx[1]#_g4603_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g4604_| (gx#core-quote-syntax 'import-binding::t))
  (define |gx[1]#_g4605_| (gx#core-quote-syntax 'make-import-binding))
  (define |gx[1]#_g4606_| (gx#core-quote-syntax 'import-binding?))
  (define |gx[1]#_g4607_| (gx#core-quote-syntax 'import-binding-e))
  (define |gx[1]#_g4608_| (gx#core-quote-syntax 'import-binding-context))
  (define |gx[1]#_g4609_| (gx#core-quote-syntax 'import-binding-weak?))
  (define |gx[1]#_g4610_| (gx#core-quote-syntax 'import-binding-e-set!))
  (define |gx[1]#_g4611_| (gx#core-quote-syntax 'import-binding-context-set!))
  (define |gx[1]#_g4612_| (gx#core-quote-syntax 'import-binding-weak?-set!))
  (define |gx[1]#_g4613_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g4614_| (gx#core-quote-syntax 'alias-binding::t))
  (define |gx[1]#_g4615_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g4616_| (gx#core-quote-syntax 'alias-binding::t))
  (define |gx[1]#_g4617_| (gx#core-quote-syntax 'make-alias-binding))
  (define |gx[1]#_g4618_| (gx#core-quote-syntax 'alias-binding?))
  (define |gx[1]#_g4619_| (gx#core-quote-syntax 'alias-binding-e))
  (define |gx[1]#_g4620_| (gx#core-quote-syntax 'alias-binding-e-set!))
  (define |gx[1]#_g4621_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g4622_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g4623_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g4624_| (gx#core-quote-syntax 'make-expander))
  (define |gx[1]#_g4625_| (gx#core-quote-syntax 'expander?))
  (define |gx[1]#_g4626_| (gx#core-quote-syntax 'expander-e))
  (define |gx[1]#_g4627_| (gx#core-quote-syntax 'expander-e-set!))
  (define |gx[1]#_g4628_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g4629_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g4630_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g4631_| (gx#core-quote-syntax 'make-core-expander))
  (define |gx[1]#_g4632_| (gx#core-quote-syntax 'core-expander?))
  (define |gx[1]#_g4633_| (gx#core-quote-syntax 'core-expander-id))
  (define |gx[1]#_g4634_| (gx#core-quote-syntax 'core-expander-compile-top))
  (define |gx[1]#_g4635_| (gx#core-quote-syntax 'core-expander-id-set!))
  (define |gx[1]#_g4636_|
    (gx#core-quote-syntax 'core-expander-compile-top-set!))
  (define |gx[1]#_g4637_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g4638_| (gx#core-quote-syntax 'expression-form::t))
  (define |gx[1]#_g4639_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g4640_| (gx#core-quote-syntax 'expression-form::t))
  (define |gx[1]#_g4641_| (gx#core-quote-syntax 'make-expression-form))
  (define |gx[1]#_g4642_| (gx#core-quote-syntax 'expression-form?))
  (define |gx[1]#_g4643_| (gx#core-quote-syntax 'core-expander))
  (define |gx[1]#_g4644_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g4645_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g4646_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g4647_| (gx#core-quote-syntax 'make-special-form))
  (define |gx[1]#_g4648_| (gx#core-quote-syntax 'special-form?))
  (define |gx[1]#_g4649_| (gx#core-quote-syntax 'core-expander))
  (define |gx[1]#_g4650_| (gx#core-quote-syntax 'definition-form::t))
  (define |gx[1]#_g4651_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g4652_| (gx#core-quote-syntax 'definition-form::t))
  (define |gx[1]#_g4653_| (gx#core-quote-syntax 'make-definition-form))
  (define |gx[1]#_g4654_| (gx#core-quote-syntax 'definition-form?))
  (define |gx[1]#_g4655_| (gx#core-quote-syntax 'special-form))
  (define |gx[1]#_g4656_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g4657_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g4658_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g4659_| (gx#core-quote-syntax 'make-top-special-form))
  (define |gx[1]#_g4660_| (gx#core-quote-syntax 'top-special-form?))
  (define |gx[1]#_g4661_| (gx#core-quote-syntax 'special-form))
  (define |gx[1]#_g4662_| (gx#core-quote-syntax 'module-special-form::t))
  (define |gx[1]#_g4663_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g4664_| (gx#core-quote-syntax 'module-special-form::t))
  (define |gx[1]#_g4665_| (gx#core-quote-syntax 'make-module-special-form))
  (define |gx[1]#_g4666_| (gx#core-quote-syntax 'module-special-form?))
  (define |gx[1]#_g4667_| (gx#core-quote-syntax 'top-special-form))
  (define |gx[1]#_g4668_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g4669_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g4670_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g4671_| (gx#core-quote-syntax 'make-feature-expander))
  (define |gx[1]#_g4672_| (gx#core-quote-syntax 'feature-expander?))
  (define |gx[1]#_g4673_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g4674_| (gx#core-quote-syntax 'private-feature-expander::t))
  (define |gx[1]#_g4675_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g4676_| (gx#core-quote-syntax 'private-feature-expander::t))
  (define |gx[1]#_g4677_|
    (gx#core-quote-syntax 'make-private-feature-expander))
  (define |gx[1]#_g4678_| (gx#core-quote-syntax 'private-feature-expander?))
  (define |gx[1]#_g4679_| (gx#core-quote-syntax 'feature-expander))
  (define |gx[1]#_g4680_| (gx#core-quote-syntax 'reserved-expander::t))
  (define |gx[1]#_g4681_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g4682_| (gx#core-quote-syntax 'reserved-expander::t))
  (define |gx[1]#_g4683_| (gx#core-quote-syntax 'make-reserved-expander))
  (define |gx[1]#_g4684_| (gx#core-quote-syntax 'reserved-expander?))
  (define |gx[1]#_g4685_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g4686_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g4687_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g4688_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g4689_| (gx#core-quote-syntax 'make-macro-expander))
  (define |gx[1]#_g4690_| (gx#core-quote-syntax 'macro-expander?))
  (define |gx[1]#_g4691_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g4692_| (gx#core-quote-syntax 'rename-macro-expander::t))
  (define |gx[1]#_g4693_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g4694_| (gx#core-quote-syntax 'rename-macro-expander::t))
  (define |gx[1]#_g4695_| (gx#core-quote-syntax 'make-rename-macro-expander))
  (define |gx[1]#_g4696_| (gx#core-quote-syntax 'rename-macro-expander?))
  (define |gx[1]#_g4697_| (gx#core-quote-syntax 'macro-expander))
  (define |gx[1]#_g4698_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g4699_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g4700_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g4701_| (gx#core-quote-syntax 'make-user-expander))
  (define |gx[1]#_g4702_| (gx#core-quote-syntax 'user-expander?))
  (define |gx[1]#_g4703_| (gx#core-quote-syntax 'user-expander-context))
  (define |gx[1]#_g4704_| (gx#core-quote-syntax 'user-expander-phi))
  (define |gx[1]#_g4705_| (gx#core-quote-syntax 'user-expander-context-set!))
  (define |gx[1]#_g4706_| (gx#core-quote-syntax 'user-expander-phi-set!))
  (define |gx[1]#_g4707_| (gx#core-quote-syntax 'macro-expander))
  (define |gx[1]#_g4708_| (gx#core-quote-syntax 'expander-mark::t))
  (define |gx[1]#_g4709_| (gx#core-quote-syntax 'expander-mark::t))
  (define |gx[1]#_g4710_| (gx#core-quote-syntax 'make-expander-mark))
  (define |gx[1]#_g4711_| (gx#core-quote-syntax 'expander-mark?))
  (define |gx[1]#_g4712_| (gx#core-quote-syntax 'expander-mark-subst))
  (define |gx[1]#_g4713_| (gx#core-quote-syntax 'expander-mark-context))
  (define |gx[1]#_g4714_| (gx#core-quote-syntax 'expander-mark-phi))
  (define |gx[1]#_g4715_| (gx#core-quote-syntax 'expander-mark-trace))
  (define |gx[1]#_g4716_| (gx#core-quote-syntax 'expander-mark-subst-set!))
  (define |gx[1]#_g4717_| (gx#core-quote-syntax 'expander-mark-context-set!))
  (define |gx[1]#_g4718_| (gx#core-quote-syntax 'expander-mark-phi-set!))
  (define |gx[1]#_g4719_| (gx#core-quote-syntax 'expander-mark-trace-set!))
  (define |gx[1]#_g4720_| (gx#core-quote-syntax 'syntax-error::t))
  (define |gx[1]#_g4721_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g4722_| (gx#core-quote-syntax 'syntax-error::t))
  (define |gx[1]#_g4723_| (gx#core-quote-syntax 'make-syntax-error))
  (define |gx[1]#_g4724_| (gx#core-quote-syntax 'syntax-error?))
  (define |gx[1]#_g4725_| (gx#core-quote-syntax 'syntax-error-context))
  (define |gx[1]#_g4726_| (gx#core-quote-syntax 'syntax-error-marks))
  (define |gx[1]#_g4727_| (gx#core-quote-syntax 'syntax-error-phi))
  (define |gx[1]#_g4728_| (gx#core-quote-syntax 'syntax-error-context-set!))
  (define |gx[1]#_g4729_| (gx#core-quote-syntax 'syntax-error-marks-set!))
  (define |gx[1]#_g4730_| (gx#core-quote-syntax 'syntax-error-phi-set!))
  (define |gx[1]#_g4731_| (gx#core-quote-syntax '<error>))
  (begin
    (define |gx[:0:]#expander-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4484_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g4485_|
                   (cons |gx[1]#_g4486_|
                         (cons |gx[1]#_g4487_|
                               (cons (cons |gx[1]#_g4488_|
                                           (cons |gx[1]#_g4489_| '()))
                                     (cons (cons |gx[1]#_g4490_|
                                                 (cons |gx[1]#_g4491_| '()))
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
       |gx[1]#_g4492_|
       'expander-identifiers:
       (cons |gx[1]#_g4493_|
             (cons |gx[1]#_g4494_|
                   (cons |gx[1]#_g4495_|
                         (cons |gx[1]#_g4496_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#root-context::t
        |gx[1]#_g4497_|
        'root-context
        '#f
        '()
        '())))
    (define |gx[:0:]#phi-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4498_|
       'expander-identifiers:
       (cons |gx[1]#_g4499_|
             (cons |gx[1]#_g4500_|
                   (cons |gx[1]#_g4501_|
                         (cons |gx[1]#_g4502_|
                               (cons (cons |gx[1]#_g4503_|
                                           (cons |gx[1]#_g4504_|
                                                 (cons |gx[1]#_g4505_| '())))
                                     (cons (cons |gx[1]#_g4506_|
                                                 (cons |gx[1]#_g4507_|
                                                       (cons |gx[1]#_g4508_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#context-phi::t
        |gx[1]#_g4509_|
        'phi-context
        '#f
        '()
        '(super up down))))
    (define |gx[:0:]#top-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4510_|
       'expander-identifiers:
       (cons |gx[1]#_g4511_|
             (cons |gx[1]#_g4512_|
                   (cons |gx[1]#_g4513_|
                         (cons |gx[1]#_g4514_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-context::t
        |gx[1]#_g4515_|
        'top-context
        '#f
        '()
        '())))
    (define |gx[:0:]#module-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4516_|
       'expander-identifiers:
       (cons |gx[1]#_g4517_|
             (cons |gx[1]#_g4518_|
                   (cons |gx[1]#_g4519_|
                         (cons |gx[1]#_g4520_|
                               (cons (cons |gx[1]#_g4521_|
                                           (cons |gx[1]#_g4522_|
                                                 (cons |gx[1]#_g4523_|
                                                       (cons |gx[1]#_g4524_|
                                                             (cons |gx[1]#_g4525_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g4526_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g4527_|
                                                 (cons |gx[1]#_g4528_|
                                                       (cons |gx[1]#_g4529_|
                                                             (cons |gx[1]#_g4530_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g4531_|
                                 (cons |gx[1]#_g4532_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-context::t
        |gx[1]#_g4533_|
        'module-context
        '#f
        '()
        '(ns path import export e code))))
    (define |gx[:0:]#prelude-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4534_|
       'expander-identifiers:
       (cons |gx[1]#_g4535_|
             (cons |gx[1]#_g4536_|
                   (cons |gx[1]#_g4537_|
                         (cons |gx[1]#_g4538_|
                               (cons (cons |gx[1]#_g4539_|
                                           (cons |gx[1]#_g4540_|
                                                 (cons |gx[1]#_g4541_| '())))
                                     (cons (cons |gx[1]#_g4542_|
                                                 (cons |gx[1]#_g4543_|
                                                       (cons |gx[1]#_g4544_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#prelude-context::t
        |gx[1]#_g4545_|
        'prelude-context
        '#f
        '()
        '(path import e))))
    (define |gx[:0:]#local-context|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4546_|
       'expander-identifiers:
       (cons |gx[1]#_g4547_|
             (cons |gx[1]#_g4548_|
                   (cons |gx[1]#_g4549_|
                         (cons |gx[1]#_g4550_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-context::t
        |gx[1]#_g4551_|
        'local-context
        '#f
        '()
        '())))
    (define |gx[:0:]#binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4552_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g4553_|
                   (cons |gx[1]#_g4554_|
                         (cons |gx[1]#_g4555_|
                               (cons (cons |gx[1]#_g4556_|
                                           (cons |gx[1]#_g4557_|
                                                 (cons |gx[1]#_g4558_| '())))
                                     (cons (cons |gx[1]#_g4559_|
                                                 (cons |gx[1]#_g4560_|
                                                       (cons |gx[1]#_g4561_|
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
       |gx[1]#_g4562_|
       'expander-identifiers:
       (cons |gx[1]#_g4563_|
             (cons |gx[1]#_g4564_|
                   (cons |gx[1]#_g4565_|
                         (cons |gx[1]#_g4566_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#runtime-binding::t
        |gx[1]#_g4567_|
        'runtime-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#local-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4568_|
       'expander-identifiers:
       (cons |gx[1]#_g4569_|
             (cons |gx[1]#_g4570_|
                   (cons |gx[1]#_g4571_|
                         (cons |gx[1]#_g4572_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-binding::t
        |gx[1]#_g4573_|
        'local-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#top-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4574_|
       'expander-identifiers:
       (cons |gx[1]#_g4575_|
             (cons |gx[1]#_g4576_|
                   (cons |gx[1]#_g4577_|
                         (cons |gx[1]#_g4578_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-binding::t
        |gx[1]#_g4579_|
        'top-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#module-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4580_|
       'expander-identifiers:
       (cons |gx[1]#_g4581_|
             (cons |gx[1]#_g4582_|
                   (cons |gx[1]#_g4583_|
                         (cons |gx[1]#_g4584_|
                               (cons (cons |gx[1]#_g4585_| '())
                                     (cons (cons |gx[1]#_g4586_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-binding::t
        |gx[1]#_g4587_|
        'module-binding
        '#f
        '()
        '(context))))
    (define |gx[:0:]#extern-binding|
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
        'gx#extern-binding::t
        |gx[1]#_g4593_|
        'extern-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#syntax-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4594_|
       'expander-identifiers:
       (cons |gx[1]#_g4595_|
             (cons |gx[1]#_g4596_|
                   (cons |gx[1]#_g4597_|
                         (cons |gx[1]#_g4598_|
                               (cons (cons |gx[1]#_g4599_| '())
                                     (cons (cons |gx[1]#_g4600_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-binding::t
        |gx[1]#_g4601_|
        'syntax-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#import-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4602_|
       'expander-identifiers:
       (cons |gx[1]#_g4603_|
             (cons |gx[1]#_g4604_|
                   (cons |gx[1]#_g4605_|
                         (cons |gx[1]#_g4606_|
                               (cons (cons |gx[1]#_g4607_|
                                           (cons |gx[1]#_g4608_|
                                                 (cons |gx[1]#_g4609_| '())))
                                     (cons (cons |gx[1]#_g4610_|
                                                 (cons |gx[1]#_g4611_|
                                                       (cons |gx[1]#_g4612_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-binding::t
        |gx[1]#_g4613_|
        'import-binding
        '#f
        '((final: . #t))
        '(e context weak?))))
    (define |gx[:0:]#alias-binding|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4614_|
       'expander-identifiers:
       (cons |gx[1]#_g4615_|
             (cons |gx[1]#_g4616_|
                   (cons |gx[1]#_g4617_|
                         (cons |gx[1]#_g4618_|
                               (cons (cons |gx[1]#_g4619_| '())
                                     (cons (cons |gx[1]#_g4620_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#alias-binding::t
        |gx[1]#_g4621_|
        'alias-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4622_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g4623_|
                   (cons |gx[1]#_g4624_|
                         (cons |gx[1]#_g4625_|
                               (cons (cons |gx[1]#_g4626_| '())
                                     (cons (cons |gx[1]#_g4627_| '()) '()))))))
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
       |gx[1]#_g4628_|
       'expander-identifiers:
       (cons |gx[1]#_g4629_|
             (cons |gx[1]#_g4630_|
                   (cons |gx[1]#_g4631_|
                         (cons |gx[1]#_g4632_|
                               (cons (cons |gx[1]#_g4633_|
                                           (cons |gx[1]#_g4634_| '()))
                                     (cons (cons |gx[1]#_g4635_|
                                                 (cons |gx[1]#_g4636_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-expander::t
        |gx[1]#_g4637_|
        'core-expander
        '#f
        '()
        '(id compile-top))))
    (define |gx[:0:]#expression-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4638_|
       'expander-identifiers:
       (cons |gx[1]#_g4639_|
             (cons |gx[1]#_g4640_|
                   (cons |gx[1]#_g4641_|
                         (cons |gx[1]#_g4642_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expression-form::t
        |gx[1]#_g4643_|
        'expression-form
        '#f
        '()
        '())))
    (define |gx[:0:]#special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4644_|
       'expander-identifiers:
       (cons |gx[1]#_g4645_|
             (cons |gx[1]#_g4646_|
                   (cons |gx[1]#_g4647_|
                         (cons |gx[1]#_g4648_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#special-form::t
        |gx[1]#_g4649_|
        'special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#definition-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4650_|
       'expander-identifiers:
       (cons |gx[1]#_g4651_|
             (cons |gx[1]#_g4652_|
                   (cons |gx[1]#_g4653_|
                         (cons |gx[1]#_g4654_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#definition-form::t
        |gx[1]#_g4655_|
        'definition-form
        '#f
        '()
        '())))
    (define |gx[:0:]#top-special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4656_|
       'expander-identifiers:
       (cons |gx[1]#_g4657_|
             (cons |gx[1]#_g4658_|
                   (cons |gx[1]#_g4659_|
                         (cons |gx[1]#_g4660_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-special-form::t
        |gx[1]#_g4661_|
        'top-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#module-special-form|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4662_|
       'expander-identifiers:
       (cons |gx[1]#_g4663_|
             (cons |gx[1]#_g4664_|
                   (cons |gx[1]#_g4665_|
                         (cons |gx[1]#_g4666_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-special-form::t
        |gx[1]#_g4667_|
        'module-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#feature-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4668_|
       'expander-identifiers:
       (cons |gx[1]#_g4669_|
             (cons |gx[1]#_g4670_|
                   (cons |gx[1]#_g4671_|
                         (cons |gx[1]#_g4672_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#feature-expander::t
        |gx[1]#_g4673_|
        'feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#private-feature-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4674_|
       'expander-identifiers:
       (cons |gx[1]#_g4675_|
             (cons |gx[1]#_g4676_|
                   (cons |gx[1]#_g4677_|
                         (cons |gx[1]#_g4678_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#private-feature-expander::t
        |gx[1]#_g4679_|
        'private-feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#reserved-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4680_|
       'expander-identifiers:
       (cons |gx[1]#_g4681_|
             (cons |gx[1]#_g4682_|
                   (cons |gx[1]#_g4683_|
                         (cons |gx[1]#_g4684_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#reserved-expander::t
        |gx[1]#_g4685_|
        'reserved-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#macro-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4686_|
       'expander-identifiers:
       (cons |gx[1]#_g4687_|
             (cons |gx[1]#_g4688_|
                   (cons |gx[1]#_g4689_|
                         (cons |gx[1]#_g4690_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-macro::t
        |gx[1]#_g4691_|
        'macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#rename-macro-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4692_|
       'expander-identifiers:
       (cons |gx[1]#_g4693_|
             (cons |gx[1]#_g4694_|
                   (cons |gx[1]#_g4695_|
                         (cons |gx[1]#_g4696_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#rename-macro-expander::t
        |gx[1]#_g4697_|
        'rename-macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#user-expander|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4698_|
       'expander-identifiers:
       (cons |gx[1]#_g4699_|
             (cons |gx[1]#_g4700_|
                   (cons |gx[1]#_g4701_|
                         (cons |gx[1]#_g4702_|
                               (cons (cons |gx[1]#_g4703_|
                                           (cons |gx[1]#_g4704_| '()))
                                     (cons (cons |gx[1]#_g4705_|
                                                 (cons |gx[1]#_g4706_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#macro-expander::t
        |gx[1]#_g4707_|
        'user-expander
        '#f
        '()
        '(context phi))))
    (define |gx[:0:]#expander-mark|
      (|gerbil/core::<MOP>::<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g4708_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g4709_|
                   (cons |gx[1]#_g4710_|
                         (cons |gx[1]#_g4711_|
                               (cons (cons |gx[1]#_g4712_|
                                           (cons |gx[1]#_g4713_|
                                                 (cons |gx[1]#_g4714_|
                                                       (cons |gx[1]#_g4715_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g4716_|
                                                 (cons |gx[1]#_g4717_|
                                                       (cons |gx[1]#_g4718_|
                                                             (cons |gx[1]#_g4719_|
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
       |gx[1]#_g4720_|
       'expander-identifiers:
       (cons |gx[1]#_g4721_|
             (cons |gx[1]#_g4722_|
                   (cons |gx[1]#_g4723_|
                         (cons |gx[1]#_g4724_|
                               (cons (cons |gx[1]#_g4725_|
                                           (cons |gx[1]#_g4726_|
                                                 (cons |gx[1]#_g4727_| '())))
                                     (cons (cons |gx[1]#_g4728_|
                                                 (cons |gx[1]#_g4729_|
                                                       (cons |gx[1]#_g4730_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core::<MOP>::<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-error::t
        |gx[1]#_g4731_|
        'syntax-error
        '#f
        '()
        '(context marks phi))))))
