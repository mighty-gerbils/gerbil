prelude: :gerbil/compiler/ssxi
package: gerbil/compiler

(begin
  (declare-type
   gxc#default-gerbil-gsc
   (optimizer-resolve-class
    '(typedecl gxc#default-gerbil-gsc)
    '#<!class #15902
              id: string
              super: (sequence::t)
              precedence-list: (sequence::t t::t)>))
  (declare-type
   gxc#default-gerbil-gcc
   (optimizer-resolve-class
    '(typedecl gxc#default-gerbil-gcc)
    '#<!class #15902
              id: string
              super: (sequence::t)
              precedence-list: (sequence::t t::t)>))
  (declare-type
   gxc#default-gerbil-ar
   (optimizer-resolve-class
    '(typedecl gxc#default-gerbil-ar)
    '#<!class #15902
              id: string
              super: (sequence::t)
              precedence-list: (sequence::t t::t)>))
  (declare-type
   gxc#+driver-mutex+
   (optimizer-resolve-class
    '(typedecl gxc#+driver-mutex+)
    '#<!class #13507 id: mutex::t super: () precedence-list: (t::t)>))
  (declare-type
   gxc#compile-timestamp
   (@lambda 0
            #f
            signature:
            (return: number::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-timestamp-nanos
   (@lambda 0
            #f
            signature:
            (return: flonum::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#scheme-file-settings
   (optimizer-resolve-class
    '(typedecl gxc#scheme-file-settings)
    '#<!class #11619
              id: pair
              super: (list::t)
              precedence-list: (list::t t::t)>))
  (declare-type
   gxc#with-output-to-scheme-file
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#gerbil-gsc
   (@lambda 0
            #f
            signature:
            (return: false::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#gerbil-gcc
   (@lambda 0
            #f
            signature:
            (return: false::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#gerbil-ar
   (@lambda 0
            #f
            signature:
            (return: false::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#gerbil-rpath
   (@lambda 1
            #f
            signature:
            (return: string::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#gerbil-runtime-modules
   (optimizer-resolve-class
    '(typedecl gxc#gerbil-runtime-modules)
    '#<!class #11619
              id: pair
              super: (list::t)
              precedence-list: (list::t t::t)>))
  (declare-type
   gxc#delete-directory*
   (@lambda 1
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-module__%
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-module__0
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-module
   (@case-lambda
    (1
     gxc#compile-module__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (2
     gxc#compile-module__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type
   gxc#compile-exe__%
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-exe__0
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-exe
   (@case-lambda
    (1
     gxc#compile-exe__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (2
     gxc#compile-exe__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type gxc#compile-executable-module (@lambda 2 #f))
  (declare-type
   gxc#compile-executable-module/separate
   (@lambda 2
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-executable-module/full-program-optimization
   (@lambda 2
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gxc#find-export-binding (@lambda 2 #f))
  (declare-type gxc#find-runtime-symbol (@lambda 2 #f))
  (declare-type
   gxc#find-runtime-module-deps
   (@lambda 1
            #f
            signature:
            (return: list::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gxc#find-static-module-file (@lambda 1 #f))
  (declare-type
   gxc#file-empty?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-top-module
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#collect-bindings
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-runtime-code
   (@lambda 1
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-meta-code
   (@lambda 1
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-ssxi-code
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#generate-meta-code
   (@lambda 1
            #f
            signature:
            (return: values::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#generate-runtime-phi
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#lift-nested-modules
   (@lambda 1
            #f
            signature:
            (return: list::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-scm-file__%
   (@lambda 3
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-scm-file__0
   (@lambda 2
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-scm-file
   (@case-lambda
    (2
     gxc#compile-scm-file__0
     signature:
     (return: void::t effect: #f arguments: #f unchecked: #f))
    (3
     gxc#compile-scm-file__%
     signature:
     (return: void::t effect: #f arguments: #f unchecked: #f))))
  (declare-type gxc#gsc-link-options__% (@lambda 1 #f))
  (declare-type gxc#gsc-link-options__0 (@lambda 0 #f))
  (declare-type
   gxc#gsc-link-options
   (@case-lambda (0 gxc#gsc-link-options__0) (1 gxc#gsc-link-options__%)))
  (declare-type gxc#gsc-cc-options__% (@lambda 1 #f))
  (declare-type gxc#gsc-cc-options__0 (@lambda 0 #f))
  (declare-type
   gxc#gsc-cc-options
   (@case-lambda (0 gxc#gsc-cc-options__0) (1 gxc#gsc-cc-options__%)))
  (declare-type
   gxc#gsc-static-include-options
   (@lambda 1
            #f
            signature:
            (return: pair::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gxc#gcc-ld-options (@lambda 0 #f))
  (declare-type
   gxc#not-string-empty?
   (@lambda 1
            #f
            signature:
            (return: boolean::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#gsc-compile-file
   (@lambda 2
            #f
            signature:
            (return: void::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-output-file
   (@lambda 3
            #f
            signature:
            (return: string::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-static-output-file
   (@lambda 1
            #f
            signature:
            (return: string::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gxc#compile-exe-output-file
   (@lambda 2
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gxc#static-module-name (@lambda 1 #f))
  (declare-type gxc#invoke__% (@lambda 5 #f))
  (declare-type gxc#invoke__@ (@lambda (1) #f))
  (declare-type
   gxc#invoke
   (@kw-lambda (stderr-redirection: stdout-redirection:) gxc#invoke__@))
  (declare-type
   gxc#join!
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f))))
