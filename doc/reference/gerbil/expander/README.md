# Expander Runtime

The expander procedures are part of the expander API and accessible at
phi=+1 (syntax definition time) in the core prelude.

These symbols are part of the `<expander-runtime>` module, defined at
the core prelude, which you can import directly if you need to work
with the expander at phi=0, for instance in source processing tools.



## syntax-case

### macro-expand-syntax
```
(macro-expand-syntax ...)
```

Please document me!

### macro-expand-syntax-case
```
(macro-expand-syntax-case ...)
```

Please document me!

### syntax-pattern?
```
(syntax-pattern? ...)
```

Please document me!

### syntax-local-pattern?
```
(syntax-local-pattern? ...)
```

Please document me!

### make-syntax-pattern
```
(make-syntax-pattern ...)
```

Please document me!

### syntax-pattern-id
```
(syntax-pattern-id ...)
```

Please document me!

### syntax-pattern-depth
```
(syntax-pattern-depth ...)
```

Please document me!

### syntax-check-splice-targets
```
(syntax-check-splice-targets ...)
```

Please document me!

### syntax-split-splice
```
(syntax-split-splice ...)
```

Please document me!


## Core Expander

### current-expander-context
```
(current-expander-context ...)
```

Please document me!

### current-expander-marks
```
(current-expander-marks ...)
```

Please document me!

### current-expander-path
```
(current-expander-path ...)
```

Please document me!

### current-expander-phi
```
(current-expander-phi ...)
```

Please document me!

### current-module-reader-path
```
(current-module-reader-path ...)
```

Please document me!

### current-module-reader-args
```
(current-module-reader-args ...)
```

Please document me!

### local-context?
```
(local-context? ...)
```

Please document me!

### top-context?
```
(top-context? ...)
```

Please document me!

### module-context?
```
(module-context? ...)
```

Please document me!

### prelude-context?
```
(prelude-context? ...)
```

Please document me!

### expander-context-id
```
(expander-context-id ...)
```

Please document me!

### module-context-ns
```
(module-context-ns ...)
```

Please document me!

### module-context-import
```
(module-context-import ...)
```

Please document me!

### module-context-export
```
(module-context-export ...)
```

Please document me!

### module-context-code
```
(module-context-code ...)
```

Please document me!

### make-local-context
```
(make-local-context ...)
```

Please document me!

### eval-syntax
```
(eval-syntax ...)
```

Please document me!

### core-expand
```
(core-expand ...)
```

Please document me!

### core-expand-head
```
(core-expand-head ...)
```

Please document me!

### core-expand-expression+1
```
(core-expand-expression+1 ...)
```

Please document me!

### import-module
```
(import-module ...)
```

Please document me!

### eval-module
```
(eval-module ...)
```

Please document me!

### core-library-module-path?
```
(core-library-module-path? ...)
```

Please document me!

### core-resolve-library-module-path
```
(core-resolve-library-module-path ...)
```

Please document me!

### core-resolve-module-path
```
(core-resolve-module-path ...)
```

Please document me!

### core-quote-syntax
```
(core-quote-syntax ...)
```

Please document me!

### core-identifier=?
```
(core-identifier=? ...)
```

Please document me!

### core-identifier-key
```
(core-identifier-key ...)
```

Please document me!

### core-apply-expander
```
(core-apply-expander ...)
```

Please document me!

### syntax-local-introduce
```
(syntax-local-introduce ...)
```

Please document me!

### syntax-local-rewrap
```
(syntax-local-rewrap ...)
```

Please document me!

### syntax-local-unwrap
```
(syntax-local-unwrap ...)
```

Please document me!

### syntax-local-e
```
(syntax-local-e ...)
```

Please document me!

### syntax-local-value
```
(syntax-local-value ...)
```

Please document me!


## Bindings

### resolve-identifier
```
(resolve-identifier ...)
```

Please document me!

### core-resolve-identifier
```
(core-resolve-identifier ...)
```

Please document me!

### binding?
```
(binding? ...)
```

Please document me!

### binding-id
```
(binding-id ...)
```

Please document me!

### runtime-binding?
```
(runtime-binding? ...)
```

Please document me!

### top-binding?
```
(top-binding? ...)
```

Please document me!

### module-binding?
```
(module-binding? ...)
```

Please document me!

### extern-binding?
```
(extern-binding? ...)
```

Please document me!

### syntax-binding?
```
(syntax-binding? ...)
```

Please document me!

### syntax-binding-e
```
(syntax-binding-e ...)
```

Please document me!

### alias-binding?
```
(alias-binding? ...)
```

Please document me!

### alias-binding-e
```
(alias-binding-e ...)
```

Please document me!

### import-binding?
```
(import-binding? ...)
```

Please document me!

### import-binding-e
```
(import-binding-e ...)
```

Please document me!


## Expanders

### expander?
```
(expander? ...)
```

Please document me!

### expander-binding?
```
(expander-binding? ...)
```

Please document me!

### expander-e
```
(expander-e ...)
```

Please document me!

### expander-binding-e
```
(expander-binding-e ...)
```

Please document me!

### feature-expander?
```
(feature-expander? ...)
```

Please document me!

### user-expander?
```
(user-expander? ...)
```

Please document me!

### make-user-expander
```
(make-user-expander ...)
```

Please document me!

### user-expander-context
```
(user-expander-context ...)
```

Please document me!

### user-expander-phi
```
(user-expander-phi ...)
```

Please document me!

### import-expander?
```
(import-expander? ...)
```

Please document me!

### make-import-expander
```
(make-import-expander ...)
```

Please document me!

### export-expander?
```
(export-expander? ...)
```

Please document me!

### make-export-expander
```
(make-export-expander ...)
```

Please document me!

### import-export-expander?
```
(import-export-expander? ...)
```

Please document me!

### make-import-export-expander
```
(make-import-export-expander ...)
```

Please document me!


## Imports and Exports

### module-import?
```
(module-import? ...)
```

Please document me!

### make-module-import
```
(make-module-import ...)
```

Please document me!

### module-import-source
```
(module-import-source ...)
```

Please document me!

### module-import-name
```
(module-import-name ...)
```

Please document me!

### module-import-phi
```
(module-import-phi ...)
```

Please document me!

### module-import-weak?
```
(module-import-weak? ...)
```

Please document me!

### module-export?
```
(module-export? ...)
```

Please document me!

### make-module-export
```
(make-module-export ...)
```

Please document me!

### module-export-context
```
(module-export-context ...)
```

Please document me!

### module-export-key
```
(module-export-key ...)
```

Please document me!

### module-export-phi
```
(module-export-phi ...)
```

Please document me!

### module-export-name
```
(module-export-name ...)
```

Please document me!

### module-export-weak?
```
(module-export-weak? ...)
```

Please document me!

### import-set?
```
(import-set? ...)
```

Please document me!

### import-set-source
```
(import-set-source ...)
```

Please document me!

### import-set-phi
```
(import-set-phi ...)
```

Please document me!

### import-set-imports
```
(import-set-imports ...)
```

Please document me!

### export-set?
```
(export-set? ...)
```

Please document me!

### export-set-source
```
(export-set-source ...)
```

Please document me!

### export-set-phi
```
(export-set-phi ...)
```

Please document me!

### export-set-exports
```
(export-set-exports ...)
```

Please document me!

### core-resolve-module-export
```
(core-resolve-module-export ...)
```

Please document me!

### core-module-export->import
```
(core-module-export->import ...)
```

Please document me!

### core-expand-import-source
```
(core-expand-import-source ...)
```

Please document me!

### core-expand-export-source
```
(core-expand-export-source ...)
```

Please document me!
