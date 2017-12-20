(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gx[1]#_g5899_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g5900_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g5901_| (gx#core-quote-syntax 'make-expander-context))
  (define |gx[1]#_g5902_| (gx#core-quote-syntax 'expander-context?))
  (define |gx[1]#_g5903_| (gx#core-quote-syntax 'expander-context-id))
  (define |gx[1]#_g5904_| (gx#core-quote-syntax 'expander-context-table))
  (define |gx[1]#_g5905_| (gx#core-quote-syntax 'expander-context-id-set!))
  (define |gx[1]#_g5906_| (gx#core-quote-syntax 'expander-context-table-set!))
  (define |gx[1]#_g5907_| (gx#core-quote-syntax 'root-context::t))
  (define |gx[1]#_g5908_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g5909_| (gx#core-quote-syntax 'root-context::t))
  (define |gx[1]#_g5910_| (gx#core-quote-syntax 'make-root-context))
  (define |gx[1]#_g5911_| (gx#core-quote-syntax 'root-context?))
  (define |gx[1]#_g5912_| (gx#core-quote-syntax 'expander-context))
  (define |gx[1]#_g5913_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g5914_| (gx#core-quote-syntax 'expander-context::t))
  (define |gx[1]#_g5915_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g5916_| (gx#core-quote-syntax 'make-phi-context))
  (define |gx[1]#_g5917_| (gx#core-quote-syntax 'phi-context?))
  (define |gx[1]#_g5918_| (gx#core-quote-syntax 'phi-context-super))
  (define |gx[1]#_g5919_| (gx#core-quote-syntax 'phi-context-up))
  (define |gx[1]#_g5920_| (gx#core-quote-syntax 'phi-context-down))
  (define |gx[1]#_g5921_| (gx#core-quote-syntax 'phi-context-super-set!))
  (define |gx[1]#_g5922_| (gx#core-quote-syntax 'phi-context-up-set!))
  (define |gx[1]#_g5923_| (gx#core-quote-syntax 'phi-context-down-set!))
  (define |gx[1]#_g5924_| (gx#core-quote-syntax 'expander-context))
  (define |gx[1]#_g5925_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g5926_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g5927_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g5928_| (gx#core-quote-syntax 'make-top-context))
  (define |gx[1]#_g5929_| (gx#core-quote-syntax 'top-context?))
  (define |gx[1]#_g5930_| (gx#core-quote-syntax 'phi-context))
  (define |gx[1]#_g5931_| (gx#core-quote-syntax 'module-context::t))
  (define |gx[1]#_g5932_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g5933_| (gx#core-quote-syntax 'module-context::t))
  (define |gx[1]#_g5934_| (gx#core-quote-syntax 'make-module-context))
  (define |gx[1]#_g5935_| (gx#core-quote-syntax 'module-context?))
  (define |gx[1]#_g5936_| (gx#core-quote-syntax 'module-context-ns))
  (define |gx[1]#_g5937_| (gx#core-quote-syntax 'module-context-path))
  (define |gx[1]#_g5938_| (gx#core-quote-syntax 'module-context-import))
  (define |gx[1]#_g5939_| (gx#core-quote-syntax 'module-context-export))
  (define |gx[1]#_g5940_| (gx#core-quote-syntax 'module-context-e))
  (define |gx[1]#_g5941_| (gx#core-quote-syntax 'module-context-code))
  (define |gx[1]#_g5942_| (gx#core-quote-syntax 'module-context-ns-set!))
  (define |gx[1]#_g5943_| (gx#core-quote-syntax 'module-context-path-set!))
  (define |gx[1]#_g5944_| (gx#core-quote-syntax 'module-context-import-set!))
  (define |gx[1]#_g5945_| (gx#core-quote-syntax 'module-context-export-set!))
  (define |gx[1]#_g5946_| (gx#core-quote-syntax 'module-context-e-set!))
  (define |gx[1]#_g5947_| (gx#core-quote-syntax 'module-context-code-set!))
  (define |gx[1]#_g5948_| (gx#core-quote-syntax 'top-context))
  (define |gx[1]#_g5949_| (gx#core-quote-syntax 'prelude-context::t))
  (define |gx[1]#_g5950_| (gx#core-quote-syntax 'top-context::t))
  (define |gx[1]#_g5951_| (gx#core-quote-syntax 'prelude-context::t))
  (define |gx[1]#_g5952_| (gx#core-quote-syntax 'make-prelude-context))
  (define |gx[1]#_g5953_| (gx#core-quote-syntax 'prelude-context?))
  (define |gx[1]#_g5954_| (gx#core-quote-syntax 'prelude-context-path))
  (define |gx[1]#_g5955_| (gx#core-quote-syntax 'prelude-context-import))
  (define |gx[1]#_g5956_| (gx#core-quote-syntax 'prelude-context-e))
  (define |gx[1]#_g5957_| (gx#core-quote-syntax 'prelude-context-path-set!))
  (define |gx[1]#_g5958_| (gx#core-quote-syntax 'prelude-context-import-set!))
  (define |gx[1]#_g5959_| (gx#core-quote-syntax 'prelude-context-e-set!))
  (define |gx[1]#_g5960_| (gx#core-quote-syntax 'top-context))
  (define |gx[1]#_g5961_| (gx#core-quote-syntax 'local-context::t))
  (define |gx[1]#_g5962_| (gx#core-quote-syntax 'phi-context::t))
  (define |gx[1]#_g5963_| (gx#core-quote-syntax 'local-context::t))
  (define |gx[1]#_g5964_| (gx#core-quote-syntax 'make-local-context))
  (define |gx[1]#_g5965_| (gx#core-quote-syntax 'local-context?))
  (define |gx[1]#_g5966_| (gx#core-quote-syntax 'phi-context))
  (define |gx[1]#_g5967_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g5968_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g5969_| (gx#core-quote-syntax 'make-binding))
  (define |gx[1]#_g5970_| (gx#core-quote-syntax 'binding?))
  (define |gx[1]#_g5971_| (gx#core-quote-syntax 'binding-id))
  (define |gx[1]#_g5972_| (gx#core-quote-syntax 'binding-key))
  (define |gx[1]#_g5973_| (gx#core-quote-syntax 'binding-phi))
  (define |gx[1]#_g5974_| (gx#core-quote-syntax 'binding-id-set!))
  (define |gx[1]#_g5975_| (gx#core-quote-syntax 'binding-key-set!))
  (define |gx[1]#_g5976_| (gx#core-quote-syntax 'binding-phi-set!))
  (define |gx[1]#_g5977_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g5978_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g5979_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g5980_| (gx#core-quote-syntax 'make-runtime-binding))
  (define |gx[1]#_g5981_| (gx#core-quote-syntax 'runtime-binding?))
  (define |gx[1]#_g5982_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g5983_| (gx#core-quote-syntax 'local-binding::t))
  (define |gx[1]#_g5984_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g5985_| (gx#core-quote-syntax 'local-binding::t))
  (define |gx[1]#_g5986_| (gx#core-quote-syntax 'make-local-binding))
  (define |gx[1]#_g5987_| (gx#core-quote-syntax 'local-binding?))
  (define |gx[1]#_g5988_| (gx#core-quote-syntax 'runtime-binding))
  (define |gx[1]#_g5989_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g5990_| (gx#core-quote-syntax 'runtime-binding::t))
  (define |gx[1]#_g5991_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g5992_| (gx#core-quote-syntax 'make-top-binding))
  (define |gx[1]#_g5993_| (gx#core-quote-syntax 'top-binding?))
  (define |gx[1]#_g5994_| (gx#core-quote-syntax 'runtime-binding))
  (define |gx[1]#_g5995_| (gx#core-quote-syntax 'module-binding::t))
  (define |gx[1]#_g5996_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g5997_| (gx#core-quote-syntax 'module-binding::t))
  (define |gx[1]#_g5998_| (gx#core-quote-syntax 'make-module-binding))
  (define |gx[1]#_g5999_| (gx#core-quote-syntax 'module-binding?))
  (define |gx[1]#_g6000_| (gx#core-quote-syntax 'module-binding-context))
  (define |gx[1]#_g6001_| (gx#core-quote-syntax 'module-binding-context-set!))
  (define |gx[1]#_g6002_| (gx#core-quote-syntax 'top-binding))
  (define |gx[1]#_g6003_| (gx#core-quote-syntax 'extern-binding::t))
  (define |gx[1]#_g6004_| (gx#core-quote-syntax 'top-binding::t))
  (define |gx[1]#_g6005_| (gx#core-quote-syntax 'extern-binding::t))
  (define |gx[1]#_g6006_| (gx#core-quote-syntax 'make-extern-binding))
  (define |gx[1]#_g6007_| (gx#core-quote-syntax 'extern-binding?))
  (define |gx[1]#_g6008_| (gx#core-quote-syntax 'top-binding))
  (define |gx[1]#_g6009_| (gx#core-quote-syntax 'syntax-binding::t))
  (define |gx[1]#_g6010_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g6011_| (gx#core-quote-syntax 'syntax-binding::t))
  (define |gx[1]#_g6012_| (gx#core-quote-syntax 'make-syntax-binding))
  (define |gx[1]#_g6013_| (gx#core-quote-syntax 'syntax-binding?))
  (define |gx[1]#_g6014_| (gx#core-quote-syntax 'syntax-binding-e))
  (define |gx[1]#_g6015_| (gx#core-quote-syntax 'syntax-binding-e-set!))
  (define |gx[1]#_g6016_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g6017_| (gx#core-quote-syntax 'import-binding::t))
  (define |gx[1]#_g6018_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g6019_| (gx#core-quote-syntax 'import-binding::t))
  (define |gx[1]#_g6020_| (gx#core-quote-syntax 'make-import-binding))
  (define |gx[1]#_g6021_| (gx#core-quote-syntax 'import-binding?))
  (define |gx[1]#_g6022_| (gx#core-quote-syntax 'import-binding-e))
  (define |gx[1]#_g6023_| (gx#core-quote-syntax 'import-binding-context))
  (define |gx[1]#_g6024_| (gx#core-quote-syntax 'import-binding-weak?))
  (define |gx[1]#_g6025_| (gx#core-quote-syntax 'import-binding-e-set!))
  (define |gx[1]#_g6026_| (gx#core-quote-syntax 'import-binding-context-set!))
  (define |gx[1]#_g6027_| (gx#core-quote-syntax 'import-binding-weak?-set!))
  (define |gx[1]#_g6028_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g6029_| (gx#core-quote-syntax 'alias-binding::t))
  (define |gx[1]#_g6030_| (gx#core-quote-syntax 'binding::t))
  (define |gx[1]#_g6031_| (gx#core-quote-syntax 'alias-binding::t))
  (define |gx[1]#_g6032_| (gx#core-quote-syntax 'make-alias-binding))
  (define |gx[1]#_g6033_| (gx#core-quote-syntax 'alias-binding?))
  (define |gx[1]#_g6034_| (gx#core-quote-syntax 'alias-binding-e))
  (define |gx[1]#_g6035_| (gx#core-quote-syntax 'alias-binding-e-set!))
  (define |gx[1]#_g6036_| (gx#core-quote-syntax 'binding))
  (define |gx[1]#_g6037_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g6038_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g6039_| (gx#core-quote-syntax 'make-expander))
  (define |gx[1]#_g6040_| (gx#core-quote-syntax 'expander?))
  (define |gx[1]#_g6041_| (gx#core-quote-syntax 'expander-e))
  (define |gx[1]#_g6042_| (gx#core-quote-syntax 'expander-e-set!))
  (define |gx[1]#_g6043_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g6044_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g6045_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g6046_| (gx#core-quote-syntax 'make-core-expander))
  (define |gx[1]#_g6047_| (gx#core-quote-syntax 'core-expander?))
  (define |gx[1]#_g6048_| (gx#core-quote-syntax 'core-expander-id))
  (define |gx[1]#_g6049_| (gx#core-quote-syntax 'core-expander-compile-top))
  (define |gx[1]#_g6050_| (gx#core-quote-syntax 'core-expander-id-set!))
  (define |gx[1]#_g6051_|
    (gx#core-quote-syntax 'core-expander-compile-top-set!))
  (define |gx[1]#_g6052_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g6053_| (gx#core-quote-syntax 'expression-form::t))
  (define |gx[1]#_g6054_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g6055_| (gx#core-quote-syntax 'expression-form::t))
  (define |gx[1]#_g6056_| (gx#core-quote-syntax 'make-expression-form))
  (define |gx[1]#_g6057_| (gx#core-quote-syntax 'expression-form?))
  (define |gx[1]#_g6058_| (gx#core-quote-syntax 'core-expander))
  (define |gx[1]#_g6059_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g6060_| (gx#core-quote-syntax 'core-expander::t))
  (define |gx[1]#_g6061_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g6062_| (gx#core-quote-syntax 'make-special-form))
  (define |gx[1]#_g6063_| (gx#core-quote-syntax 'special-form?))
  (define |gx[1]#_g6064_| (gx#core-quote-syntax 'core-expander))
  (define |gx[1]#_g6065_| (gx#core-quote-syntax 'definition-form::t))
  (define |gx[1]#_g6066_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g6067_| (gx#core-quote-syntax 'definition-form::t))
  (define |gx[1]#_g6068_| (gx#core-quote-syntax 'make-definition-form))
  (define |gx[1]#_g6069_| (gx#core-quote-syntax 'definition-form?))
  (define |gx[1]#_g6070_| (gx#core-quote-syntax 'special-form))
  (define |gx[1]#_g6071_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g6072_| (gx#core-quote-syntax 'special-form::t))
  (define |gx[1]#_g6073_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g6074_| (gx#core-quote-syntax 'make-top-special-form))
  (define |gx[1]#_g6075_| (gx#core-quote-syntax 'top-special-form?))
  (define |gx[1]#_g6076_| (gx#core-quote-syntax 'special-form))
  (define |gx[1]#_g6077_| (gx#core-quote-syntax 'module-special-form::t))
  (define |gx[1]#_g6078_| (gx#core-quote-syntax 'top-special-form::t))
  (define |gx[1]#_g6079_| (gx#core-quote-syntax 'module-special-form::t))
  (define |gx[1]#_g6080_| (gx#core-quote-syntax 'make-module-special-form))
  (define |gx[1]#_g6081_| (gx#core-quote-syntax 'module-special-form?))
  (define |gx[1]#_g6082_| (gx#core-quote-syntax 'top-special-form))
  (define |gx[1]#_g6083_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g6084_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g6085_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g6086_| (gx#core-quote-syntax 'make-feature-expander))
  (define |gx[1]#_g6087_| (gx#core-quote-syntax 'feature-expander?))
  (define |gx[1]#_g6088_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g6089_| (gx#core-quote-syntax 'private-feature-expander::t))
  (define |gx[1]#_g6090_| (gx#core-quote-syntax 'feature-expander::t))
  (define |gx[1]#_g6091_| (gx#core-quote-syntax 'private-feature-expander::t))
  (define |gx[1]#_g6092_|
    (gx#core-quote-syntax 'make-private-feature-expander))
  (define |gx[1]#_g6093_| (gx#core-quote-syntax 'private-feature-expander?))
  (define |gx[1]#_g6094_| (gx#core-quote-syntax 'feature-expander))
  (define |gx[1]#_g6095_| (gx#core-quote-syntax 'reserved-expander::t))
  (define |gx[1]#_g6096_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g6097_| (gx#core-quote-syntax 'reserved-expander::t))
  (define |gx[1]#_g6098_| (gx#core-quote-syntax 'make-reserved-expander))
  (define |gx[1]#_g6099_| (gx#core-quote-syntax 'reserved-expander?))
  (define |gx[1]#_g6100_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g6101_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g6102_| (gx#core-quote-syntax 'expander::t))
  (define |gx[1]#_g6103_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g6104_| (gx#core-quote-syntax 'make-macro-expander))
  (define |gx[1]#_g6105_| (gx#core-quote-syntax 'macro-expander?))
  (define |gx[1]#_g6106_| (gx#core-quote-syntax 'expander))
  (define |gx[1]#_g6107_| (gx#core-quote-syntax 'rename-macro-expander::t))
  (define |gx[1]#_g6108_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g6109_| (gx#core-quote-syntax 'rename-macro-expander::t))
  (define |gx[1]#_g6110_| (gx#core-quote-syntax 'make-rename-macro-expander))
  (define |gx[1]#_g6111_| (gx#core-quote-syntax 'rename-macro-expander?))
  (define |gx[1]#_g6112_| (gx#core-quote-syntax 'macro-expander))
  (define |gx[1]#_g6113_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g6114_| (gx#core-quote-syntax 'macro-expander::t))
  (define |gx[1]#_g6115_| (gx#core-quote-syntax 'user-expander::t))
  (define |gx[1]#_g6116_| (gx#core-quote-syntax 'make-user-expander))
  (define |gx[1]#_g6117_| (gx#core-quote-syntax 'user-expander?))
  (define |gx[1]#_g6118_| (gx#core-quote-syntax 'user-expander-context))
  (define |gx[1]#_g6119_| (gx#core-quote-syntax 'user-expander-phi))
  (define |gx[1]#_g6120_| (gx#core-quote-syntax 'user-expander-context-set!))
  (define |gx[1]#_g6121_| (gx#core-quote-syntax 'user-expander-phi-set!))
  (define |gx[1]#_g6122_| (gx#core-quote-syntax 'macro-expander))
  (define |gx[1]#_g6123_| (gx#core-quote-syntax 'expander-mark::t))
  (define |gx[1]#_g6124_| (gx#core-quote-syntax 'expander-mark::t))
  (define |gx[1]#_g6125_| (gx#core-quote-syntax 'make-expander-mark))
  (define |gx[1]#_g6126_| (gx#core-quote-syntax 'expander-mark?))
  (define |gx[1]#_g6127_| (gx#core-quote-syntax 'expander-mark-subst))
  (define |gx[1]#_g6128_| (gx#core-quote-syntax 'expander-mark-context))
  (define |gx[1]#_g6129_| (gx#core-quote-syntax 'expander-mark-phi))
  (define |gx[1]#_g6130_| (gx#core-quote-syntax 'expander-mark-trace))
  (define |gx[1]#_g6131_| (gx#core-quote-syntax 'expander-mark-subst-set!))
  (define |gx[1]#_g6132_| (gx#core-quote-syntax 'expander-mark-context-set!))
  (define |gx[1]#_g6133_| (gx#core-quote-syntax 'expander-mark-phi-set!))
  (define |gx[1]#_g6134_| (gx#core-quote-syntax 'expander-mark-trace-set!))
  (define |gx[1]#_g6135_| (gx#core-quote-syntax 'syntax-error::t))
  (define |gx[1]#_g6136_| (gx#core-quote-syntax 'error::t))
  (define |gx[1]#_g6137_| (gx#core-quote-syntax 'syntax-error::t))
  (define |gx[1]#_g6138_| (gx#core-quote-syntax 'make-syntax-error))
  (define |gx[1]#_g6139_| (gx#core-quote-syntax 'syntax-error?))
  (define |gx[1]#_g6140_| (gx#core-quote-syntax 'syntax-error-context))
  (define |gx[1]#_g6141_| (gx#core-quote-syntax 'syntax-error-marks))
  (define |gx[1]#_g6142_| (gx#core-quote-syntax 'syntax-error-phi))
  (define |gx[1]#_g6143_| (gx#core-quote-syntax 'syntax-error-context-set!))
  (define |gx[1]#_g6144_| (gx#core-quote-syntax 'syntax-error-marks-set!))
  (define |gx[1]#_g6145_| (gx#core-quote-syntax 'syntax-error-phi-set!))
  (define |gx[1]#_g6146_| (gx#core-quote-syntax '<error>))
  (begin
    (define |gx[:0:]#expander-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5899_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g5900_|
                   (cons |gx[1]#_g5901_|
                         (cons |gx[1]#_g5902_|
                               (cons (cons |gx[1]#_g5903_|
                                           (cons |gx[1]#_g5904_| '()))
                                     (cons (cons |gx[1]#_g5905_|
                                                 (cons |gx[1]#_g5906_| '()))
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
       |gx[1]#_g5907_|
       'expander-identifiers:
       (cons |gx[1]#_g5908_|
             (cons |gx[1]#_g5909_|
                   (cons |gx[1]#_g5910_|
                         (cons |gx[1]#_g5911_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#root-context::t
        |gx[1]#_g5912_|
        'root-context
        '#f
        '()
        '())))
    (define |gx[:0:]#phi-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5913_|
       'expander-identifiers:
       (cons |gx[1]#_g5914_|
             (cons |gx[1]#_g5915_|
                   (cons |gx[1]#_g5916_|
                         (cons |gx[1]#_g5917_|
                               (cons (cons |gx[1]#_g5918_|
                                           (cons |gx[1]#_g5919_|
                                                 (cons |gx[1]#_g5920_| '())))
                                     (cons (cons |gx[1]#_g5921_|
                                                 (cons |gx[1]#_g5922_|
                                                       (cons |gx[1]#_g5923_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#context-phi::t
        |gx[1]#_g5924_|
        'phi-context
        '#f
        '()
        '(super up down))))
    (define |gx[:0:]#top-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5925_|
       'expander-identifiers:
       (cons |gx[1]#_g5926_|
             (cons |gx[1]#_g5927_|
                   (cons |gx[1]#_g5928_|
                         (cons |gx[1]#_g5929_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-context::t
        |gx[1]#_g5930_|
        'top-context
        '#f
        '()
        '())))
    (define |gx[:0:]#module-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5931_|
       'expander-identifiers:
       (cons |gx[1]#_g5932_|
             (cons |gx[1]#_g5933_|
                   (cons |gx[1]#_g5934_|
                         (cons |gx[1]#_g5935_|
                               (cons (cons |gx[1]#_g5936_|
                                           (cons |gx[1]#_g5937_|
                                                 (cons |gx[1]#_g5938_|
                                                       (cons |gx[1]#_g5939_|
                                                             (cons |gx[1]#_g5940_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g5941_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons (cons |gx[1]#_g5942_|
                                                 (cons |gx[1]#_g5943_|
                                                       (cons |gx[1]#_g5944_|
                                                             (cons |gx[1]#_g5945_|
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons |gx[1]#_g5946_|
                                 (cons |gx[1]#_g5947_| '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-context::t
        |gx[1]#_g5948_|
        'module-context
        '#f
        '()
        '(ns path import export e code))))
    (define |gx[:0:]#prelude-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5949_|
       'expander-identifiers:
       (cons |gx[1]#_g5950_|
             (cons |gx[1]#_g5951_|
                   (cons |gx[1]#_g5952_|
                         (cons |gx[1]#_g5953_|
                               (cons (cons |gx[1]#_g5954_|
                                           (cons |gx[1]#_g5955_|
                                                 (cons |gx[1]#_g5956_| '())))
                                     (cons (cons |gx[1]#_g5957_|
                                                 (cons |gx[1]#_g5958_|
                                                       (cons |gx[1]#_g5959_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#prelude-context::t
        |gx[1]#_g5960_|
        'prelude-context
        '#f
        '()
        '(path import e))))
    (define |gx[:0:]#local-context|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5961_|
       'expander-identifiers:
       (cons |gx[1]#_g5962_|
             (cons |gx[1]#_g5963_|
                   (cons |gx[1]#_g5964_|
                         (cons |gx[1]#_g5965_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-context::t
        |gx[1]#_g5966_|
        'local-context
        '#f
        '()
        '())))
    (define |gx[:0:]#binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5967_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g5968_|
                   (cons |gx[1]#_g5969_|
                         (cons |gx[1]#_g5970_|
                               (cons (cons |gx[1]#_g5971_|
                                           (cons |gx[1]#_g5972_|
                                                 (cons |gx[1]#_g5973_| '())))
                                     (cons (cons |gx[1]#_g5974_|
                                                 (cons |gx[1]#_g5975_|
                                                       (cons |gx[1]#_g5976_|
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
       |gx[1]#_g5977_|
       'expander-identifiers:
       (cons |gx[1]#_g5978_|
             (cons |gx[1]#_g5979_|
                   (cons |gx[1]#_g5980_|
                         (cons |gx[1]#_g5981_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#runtime-binding::t
        |gx[1]#_g5982_|
        'runtime-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#local-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5983_|
       'expander-identifiers:
       (cons |gx[1]#_g5984_|
             (cons |gx[1]#_g5985_|
                   (cons |gx[1]#_g5986_|
                         (cons |gx[1]#_g5987_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#local-binding::t
        |gx[1]#_g5988_|
        'local-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#top-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5989_|
       'expander-identifiers:
       (cons |gx[1]#_g5990_|
             (cons |gx[1]#_g5991_|
                   (cons |gx[1]#_g5992_|
                         (cons |gx[1]#_g5993_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-binding::t
        |gx[1]#_g5994_|
        'top-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#module-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g5995_|
       'expander-identifiers:
       (cons |gx[1]#_g5996_|
             (cons |gx[1]#_g5997_|
                   (cons |gx[1]#_g5998_|
                         (cons |gx[1]#_g5999_|
                               (cons (cons |gx[1]#_g6000_| '())
                                     (cons (cons |gx[1]#_g6001_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-binding::t
        |gx[1]#_g6002_|
        'module-binding
        '#f
        '()
        '(context))))
    (define |gx[:0:]#extern-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6003_|
       'expander-identifiers:
       (cons |gx[1]#_g6004_|
             (cons |gx[1]#_g6005_|
                   (cons |gx[1]#_g6006_|
                         (cons |gx[1]#_g6007_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#extern-binding::t
        |gx[1]#_g6008_|
        'extern-binding
        '#f
        '()
        '())))
    (define |gx[:0:]#syntax-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6009_|
       'expander-identifiers:
       (cons |gx[1]#_g6010_|
             (cons |gx[1]#_g6011_|
                   (cons |gx[1]#_g6012_|
                         (cons |gx[1]#_g6013_|
                               (cons (cons |gx[1]#_g6014_| '())
                                     (cons (cons |gx[1]#_g6015_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-binding::t
        |gx[1]#_g6016_|
        'syntax-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#import-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6017_|
       'expander-identifiers:
       (cons |gx[1]#_g6018_|
             (cons |gx[1]#_g6019_|
                   (cons |gx[1]#_g6020_|
                         (cons |gx[1]#_g6021_|
                               (cons (cons |gx[1]#_g6022_|
                                           (cons |gx[1]#_g6023_|
                                                 (cons |gx[1]#_g6024_| '())))
                                     (cons (cons |gx[1]#_g6025_|
                                                 (cons |gx[1]#_g6026_|
                                                       (cons |gx[1]#_g6027_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#import-binding::t
        |gx[1]#_g6028_|
        'import-binding
        '#f
        '((final: . #t))
        '(e context weak?))))
    (define |gx[:0:]#alias-binding|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6029_|
       'expander-identifiers:
       (cons |gx[1]#_g6030_|
             (cons |gx[1]#_g6031_|
                   (cons |gx[1]#_g6032_|
                         (cons |gx[1]#_g6033_|
                               (cons (cons |gx[1]#_g6034_| '())
                                     (cons (cons |gx[1]#_g6035_| '()) '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#alias-binding::t
        |gx[1]#_g6036_|
        'alias-binding
        '#f
        '((final: . #t))
        '(e))))
    (define |gx[:0:]#expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6037_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g6038_|
                   (cons |gx[1]#_g6039_|
                         (cons |gx[1]#_g6040_|
                               (cons (cons |gx[1]#_g6041_| '())
                                     (cons (cons |gx[1]#_g6042_| '()) '()))))))
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
       |gx[1]#_g6043_|
       'expander-identifiers:
       (cons |gx[1]#_g6044_|
             (cons |gx[1]#_g6045_|
                   (cons |gx[1]#_g6046_|
                         (cons |gx[1]#_g6047_|
                               (cons (cons |gx[1]#_g6048_|
                                           (cons |gx[1]#_g6049_| '()))
                                     (cons (cons |gx[1]#_g6050_|
                                                 (cons |gx[1]#_g6051_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-expander::t
        |gx[1]#_g6052_|
        'core-expander
        '#f
        '()
        '(id compile-top))))
    (define |gx[:0:]#expression-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6053_|
       'expander-identifiers:
       (cons |gx[1]#_g6054_|
             (cons |gx[1]#_g6055_|
                   (cons |gx[1]#_g6056_|
                         (cons |gx[1]#_g6057_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#expression-form::t
        |gx[1]#_g6058_|
        'expression-form
        '#f
        '()
        '())))
    (define |gx[:0:]#special-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6059_|
       'expander-identifiers:
       (cons |gx[1]#_g6060_|
             (cons |gx[1]#_g6061_|
                   (cons |gx[1]#_g6062_|
                         (cons |gx[1]#_g6063_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#special-form::t
        |gx[1]#_g6064_|
        'special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#definition-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6065_|
       'expander-identifiers:
       (cons |gx[1]#_g6066_|
             (cons |gx[1]#_g6067_|
                   (cons |gx[1]#_g6068_|
                         (cons |gx[1]#_g6069_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#definition-form::t
        |gx[1]#_g6070_|
        'definition-form
        '#f
        '()
        '())))
    (define |gx[:0:]#top-special-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6071_|
       'expander-identifiers:
       (cons |gx[1]#_g6072_|
             (cons |gx[1]#_g6073_|
                   (cons |gx[1]#_g6074_|
                         (cons |gx[1]#_g6075_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#top-special-form::t
        |gx[1]#_g6076_|
        'top-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#module-special-form|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6077_|
       'expander-identifiers:
       (cons |gx[1]#_g6078_|
             (cons |gx[1]#_g6079_|
                   (cons |gx[1]#_g6080_|
                         (cons |gx[1]#_g6081_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#module-special-form::t
        |gx[1]#_g6082_|
        'module-special-form
        '#f
        '()
        '())))
    (define |gx[:0:]#feature-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6083_|
       'expander-identifiers:
       (cons |gx[1]#_g6084_|
             (cons |gx[1]#_g6085_|
                   (cons |gx[1]#_g6086_|
                         (cons |gx[1]#_g6087_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#feature-expander::t
        |gx[1]#_g6088_|
        'feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#private-feature-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6089_|
       'expander-identifiers:
       (cons |gx[1]#_g6090_|
             (cons |gx[1]#_g6091_|
                   (cons |gx[1]#_g6092_|
                         (cons |gx[1]#_g6093_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#private-feature-expander::t
        |gx[1]#_g6094_|
        'private-feature-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#reserved-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6095_|
       'expander-identifiers:
       (cons |gx[1]#_g6096_|
             (cons |gx[1]#_g6097_|
                   (cons |gx[1]#_g6098_|
                         (cons |gx[1]#_g6099_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#reserved-expander::t
        |gx[1]#_g6100_|
        'reserved-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#macro-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6101_|
       'expander-identifiers:
       (cons |gx[1]#_g6102_|
             (cons |gx[1]#_g6103_|
                   (cons |gx[1]#_g6104_|
                         (cons |gx[1]#_g6105_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#core-macro::t
        |gx[1]#_g6106_|
        'macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#rename-macro-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6107_|
       'expander-identifiers:
       (cons |gx[1]#_g6108_|
             (cons |gx[1]#_g6109_|
                   (cons |gx[1]#_g6110_|
                         (cons |gx[1]#_g6111_| (cons '() (cons '() '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#rename-macro-expander::t
        |gx[1]#_g6112_|
        'rename-macro-expander
        '#f
        '()
        '())))
    (define |gx[:0:]#user-expander|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6113_|
       'expander-identifiers:
       (cons |gx[1]#_g6114_|
             (cons |gx[1]#_g6115_|
                   (cons |gx[1]#_g6116_|
                         (cons |gx[1]#_g6117_|
                               (cons (cons |gx[1]#_g6118_|
                                           (cons |gx[1]#_g6119_| '()))
                                     (cons (cons |gx[1]#_g6120_|
                                                 (cons |gx[1]#_g6121_| '()))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#macro-expander::t
        |gx[1]#_g6122_|
        'user-expander
        '#f
        '()
        '(context phi))))
    (define |gx[:0:]#expander-mark|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |gx[1]#_g6123_|
       'expander-identifiers:
       (cons '#f
             (cons |gx[1]#_g6124_|
                   (cons |gx[1]#_g6125_|
                         (cons |gx[1]#_g6126_|
                               (cons (cons |gx[1]#_g6127_|
                                           (cons |gx[1]#_g6128_|
                                                 (cons |gx[1]#_g6129_|
                                                       (cons |gx[1]#_g6130_|
                                                             '()))))
                                     (cons (cons |gx[1]#_g6131_|
                                                 (cons |gx[1]#_g6132_|
                                                       (cons |gx[1]#_g6133_|
                                                             (cons |gx[1]#_g6134_|
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
       |gx[1]#_g6135_|
       'expander-identifiers:
       (cons |gx[1]#_g6136_|
             (cons |gx[1]#_g6137_|
                   (cons |gx[1]#_g6138_|
                         (cons |gx[1]#_g6139_|
                               (cons (cons |gx[1]#_g6140_|
                                           (cons |gx[1]#_g6141_|
                                                 (cons |gx[1]#_g6142_| '())))
                                     (cons (cons |gx[1]#_g6143_|
                                                 (cons |gx[1]#_g6144_|
                                                       (cons |gx[1]#_g6145_|
                                                             '())))
                                           '()))))))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gx#syntax-error::t
        |gx[1]#_g6146_|
        'syntax-error
        '#f
        '()
        '(context marks phi))))))
