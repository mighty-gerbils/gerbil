(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1707657569)
  (begin
    (define spawn
      (lambda (_f95695_ . _args95696_)
        (if (let () (declare (not safe)) (procedure? _f95695_))
            '#!void
            (raise (let ((__obj100165
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100165
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f95695_ '())))
                     __obj100165)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95695_ _args95696_ '#!void '#f))))
    (define spawn/name
      (lambda (_name95691_ _f95692_ . _args95693_)
        (if (let () (declare (not safe)) (procedure? _f95692_))
            '#!void
            (raise (let ((__obj100166
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100166
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f95692_ '())))
                     __obj100166)))
        (let ()
          (declare (not safe))
          (spawn-actor _f95692_ _args95693_ _name95691_ '#f))))
    (define spawn/group
      (lambda (_name95685_ _f95686_ . _args95687_)
        (if (let () (declare (not safe)) (procedure? _f95686_))
            '#!void
            (raise (let ((__obj100167
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100167
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f95686_ '())))
                     __obj100167)))
        (let ((_tgroup95689_ (make-thread-group _name95685_)))
          (declare (not safe))
          (spawn-actor _f95686_ _args95687_ _name95685_ _tgroup95689_))))
    (define spawn-actor
      (lambda (_f95658_ _args95659_ _name95660_ _tgroup95661_)
        (letrec ((_thread-main95663_
                  (lambda (_thunk95677_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn95680_)
                         (let ((__tmp100169
                                (lambda (_cont95682_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp100170
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont95682_
                                                _exn95680_))))
                                        (declare (not safe))
                                        (with-catch void __tmp100170))
                                      '#!void)
                                  (let ((__tmp100171
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont95682_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp100171
                                     ##primordial-exception-handler
                                     _exn95680_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp100169)))
                       _thunk95677_)))))
          (let* ((_thunk95666_
                  (if (let () (declare (not safe)) (null? _args95659_))
                      _f95658_
                      (lambda () (apply _f95658_ _args95659_))))
                 (_thunk95669_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk95666_))))
                 (_tgroup95674_
                  (let ((_$e95671_ _tgroup95661_))
                    (if _$e95671_
                        _$e95671_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main95663_ _thunk95669_))
              _name95660_
              _tgroup95674_))))))
    (define spawn-thread__%
      (lambda (_thunk95636_ _name95637_ _tgroup95638_)
        (thread-start! (make-thread _thunk95636_ _name95637_ _tgroup95638_))))
    (define spawn-thread__0
      (lambda (_thunk95643_)
        (let* ((_name95645_ absent-obj) (_tgroup95647_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95643_ _name95645_ _tgroup95647_))))
    (define spawn-thread__1
      (lambda (_thunk95649_ _name95650_)
        (let ((_tgroup95652_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk95649_ _name95650_ _tgroup95652_))))
    (define spawn-thread
      (lambda _g100173_
        (let ((_g100172_ (let () (declare (not safe)) (##length _g100173_))))
          (cond ((let () (declare (not safe)) (##fx= _g100172_ 1))
                 (apply (lambda (_thunk95643_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk95643_)))
                        _g100173_))
                ((let () (declare (not safe)) (##fx= _g100172_ 2))
                 (apply (lambda (_thunk95649_ _name95650_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk95649_ _name95650_)))
                        _g100173_))
                ((let () (declare (not safe)) (##fx= _g100172_ 3))
                 (apply (lambda (_thunk95654_ _name95655_ _tgroup95656_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk95654_
                             _name95655_
                             _tgroup95656_)))
                        _g100173_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g100173_))))))
    (define thread-local-ref__%
      (lambda (_key95620_ _default95621_)
        (let ((_tab95623_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-ref _tab95623_ _key95620_ _default95621_))))
    (define thread-local-ref__0
      (lambda (_key95628_)
        (let ((_default95630_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key95628_ _default95630_))))
    (define thread-local-ref
      (lambda _g100175_
        (let ((_g100174_ (let () (declare (not safe)) (##length _g100175_))))
          (cond ((let () (declare (not safe)) (##fx= _g100174_ 1))
                 (apply (lambda (_key95628_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key95628_)))
                        _g100175_))
                ((let () (declare (not safe)) (##fx= _g100174_ 2))
                 (apply (lambda (_key95632_ _default95633_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key95632_ _default95633_)))
                        _g100175_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g100175_))))))
    (define thread-local-get
      (lambda (_key95617_)
        (let () (declare (not safe)) (thread-local-ref _key95617_ '#f))))
    (define thread-local-set!
      (lambda (_key95612_ _value95613_)
        (let ((_tab95615_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95615_ _key95612_ _value95613_))))
    (define thread-local-clear!
      (lambda (_key95608_)
        (let ((_tab95610_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (table-set! _tab95610_ _key95608_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr95594_ (current-thread)))
          (if (let () (declare (not safe)) (actor-thread? _thr95594_))
              (let ((_$e95596_ (actor-thread-locals _thr95594_)))
                (if _$e95596_
                    (values _$e95596_)
                    (let ((_tab95599_
                           (let ()
                             (declare (not safe))
                             (make-table 'test: eq?))))
                      (actor-thread-locals-set! _thr95594_ _tab95599_)
                      _tab95599_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr95594_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e95601_
                           (let ()
                             (declare (not safe))
                             (table-ref __thread-locals _thr95594_ '#f))))
                      (if _$e95601_
                          ((lambda (_tab95604_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab95604_)
                           _$e95601_)
                          (let ((_tab95606_
                                 (let ()
                                   (declare (not safe))
                                   (make-table 'test: eq?))))
                            (let ()
                              (declare (not safe))
                              (table-set!
                               __thread-locals
                               _thr95594_
                               _tab95606_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab95606_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-table 'test: eq?)))
    (define __thread-locals
      (let () (declare (not safe)) (make-table 'test: eq? 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc95591_)
        (if (let () (declare (not safe)) (procedure? _proc95591_))
            '#!void
            (raise (let ((__obj100168
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj100168
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc95591_ '())))
                     __obj100168)))
        (set! __unhandled-actor-exception-hook _proc95591_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx95579_ _proc95580_)
        (let ((_handler95582_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e95584_)
             (let ((__tmp100176
                    (lambda ()
                      (mutex-unlock! _mx95579_)
                      (_handler95582_ _e95584_))))
               (declare (not safe))
               (with-catch void __tmp100176))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e95584_)))
           (lambda ()
             (mutex-lock! _mx95579_)
             (let ((_result95588_ (_proc95580_)))
               (mutex-unlock! _mx95579_)
               _result95588_))))))
    (define with-dynamic-lock
      (lambda (_mx95574_ _proc95575_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx95574_))
         _proc95575_
         (lambda () (mutex-unlock! _mx95574_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk95555_ _error-port95556_)
        (with-exception-handler
         (let ((_E95558_ (current-exception-handler)))
           (lambda (_exn95560_)
             (continuation-capture
              (lambda (_cont95562_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont95562_
                       _exn95560_
                       _error-port95556_))
                    '#!void)
                (_E95558_ _exn95560_)))))
         _thunk95555_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk95567_)
        (let ((_error-port95569_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk95567_ _error-port95569_))))
    (define with-exception-stack-trace
      (lambda _g100178_
        (let ((_g100177_ (let () (declare (not safe)) (##length _g100178_))))
          (cond ((let () (declare (not safe)) (##fx= _g100177_ 1))
                 (apply (lambda (_thunk95567_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk95567_)))
                        _g100178_))
                ((let () (declare (not safe)) (##fx= _g100177_ 2))
                 (apply (lambda (_thunk95571_ _error-port95572_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk95571_
                             _error-port95572_)))
                        _g100178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g100178_))))))
    (define dump-stack-trace!__%
      (lambda (_cont95536_ _exn95537_ _error-port95538_)
        (let ((_out95540_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out95540_))
          (display '"*** Unhandled exception in " _out95540_)
          (display (current-thread) _out95540_)
          (newline _out95540_)
          (display-exception _exn95537_ _out95540_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn95537_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out95540_)
                (newline _out95540_)
                (display-continuation-backtrace _cont95536_ _out95540_)))
          (let ((__tmp100179 (get-output-string _out95540_)))
            (declare (not safe))
            (##write-string __tmp100179 _error-port95538_)))))
    (define dump-stack-trace!__0
      (lambda (_cont95545_ _exn95546_)
        (let ((_error-port95548_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont95545_ _exn95546_ _error-port95548_))))
    (define dump-stack-trace!
      (lambda _g100181_
        (let ((_g100180_ (let () (declare (not safe)) (##length _g100181_))))
          (cond ((let () (declare (not safe)) (##fx= _g100180_ 2))
                 (apply (lambda (_cont95545_ _exn95546_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont95545_ _exn95546_)))
                        _g100181_))
                ((let () (declare (not safe)) (##fx= _g100180_ 3))
                 (apply (lambda (_cont95550_ _exn95551_ _error-port95552_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont95550_
                             _exn95551_
                             _error-port95552_)))
                        _g100181_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g100181_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
