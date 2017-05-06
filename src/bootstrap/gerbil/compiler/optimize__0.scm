(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
  (define gxc#current-compile-optimizer-info (make-parameter '#f))
  (define gxc#optimizer-info::t
    (make-struct-type
     'gxc#optimizer-info::t
     '#f
     '2
     'optimizer-info
     '()
     ':init!))
  (define gxc#optimizer-info? (make-struct-predicate gxc#optimizer-info::t))
  (define gxc#make-optimizer-info
    (lambda _$args5920_
      (apply make-struct-instance gxc#optimizer-info::t _$args5920_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (begin)
  (define gxc#optimizer-info:::init!
    (lambda (_self5918_)
      (direct-struct-instance-init!
       _self5918_
       (make-hash-table-eq)
       (make-hash-table-eq))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info (gxc#make-optimizer-info)))))
  (define gxc#optimize!
    (lambda (_ctx5913_)
      (let ((_code5915_
             (gxc#optimize-source (gx#module-context-code _ctx5913_))))
        (gx#module-context-code-set! _ctx5913_ _code5915_))))
  (define gxc#optimize-source (lambda (_stx5911_) _stx5911_)))
