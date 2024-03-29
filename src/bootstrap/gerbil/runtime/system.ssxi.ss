prelude: :gerbil/compiler/ssxi
package: gerbil/runtime

(begin
  (declare-type
   gerbil-version-string
   (@lambda 0
            #f
            signature:
            (return: string::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   gerbil-system-manifest
   (@class pair (list::t) (list::t t::t) () () #f #f #f #f #f #f))
  (declare-type
   build-manifest
   (@class pair (list::t) (list::t t::t) () () #f #f #f #f #f #f))
  (declare-type display-build-manifest__% (@lambda 2 #f))
  (declare-type display-build-manifest__0 (@lambda 0 #f))
  (declare-type display-build-manifest__1 (@lambda 1 #f))
  (declare-type
   display-build-manifest
   (@case-lambda
    (0 display-build-manifest__0)
    (1 display-build-manifest__1)
    (2 display-build-manifest__%)))
  (declare-type build-manifest/layer (@lambda 1 #f))
  (declare-type
   build-manifest/head
   (@lambda 0
            #f
            signature:
            (return: pair::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   build-manifest-string__%
   (@lambda 1
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   build-manifest-string__0
   (@lambda 0
            #f
            signature:
            (return: t::t effect: #f arguments: #f unchecked: #f)))
  (declare-type
   build-manifest-string
   (@case-lambda
    (0
     build-manifest-string__0
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))
    (1
     build-manifest-string__%
     signature:
     (return: t::t effect: #f arguments: #f unchecked: #f))))
  (declare-type gerbil-system-version-string (@lambda 0 #f))
  (declare-type
   gerbil-system
   (@lambda 0
            #f
            signature:
            (return: symbol::t effect: #f arguments: #f unchecked: #f)))
  (declare-type gerbil-home (@lambda 0 #f))
  (declare-type gerbil-path (@lambda 0 #f))
  (declare-type gerbil-runtime-smp? (@lambda 0 #f)))
