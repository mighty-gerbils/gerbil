(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1709038441)
  (begin
    (define spawn
      (lambda (_f72787_ . _args72788_)
        (if (let () (declare (not safe)) (procedure? _f72787_))
            '#!void
            (raise (let ((__obj72789
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72789
                      '"expected procedure"
                      'where:
                      'spawn
                      'irritants:
                      (let () (declare (not safe)) (cons _f72787_ '())))
                     __obj72789)))
        (let ()
          (declare (not safe))
          (spawn-actor _f72787_ _args72788_ '#!void '#f))))
    (define spawn/name
      (lambda (_name72783_ _f72784_ . _args72785_)
        (if (let () (declare (not safe)) (procedure? _f72784_))
            '#!void
            (raise (let ((__obj72790
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72790
                      '"expected procedure"
                      'where:
                      'spawn/name
                      'irritants:
                      (let () (declare (not safe)) (cons _f72784_ '())))
                     __obj72790)))
        (let ()
          (declare (not safe))
          (spawn-actor _f72784_ _args72785_ _name72783_ '#f))))
    (define spawn/group
      (lambda (_name72777_ _f72778_ . _args72779_)
        (if (let () (declare (not safe)) (procedure? _f72778_))
            '#!void
            (raise (let ((__obj72791
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72791
                      '"expected procedure"
                      'where:
                      'spawn/group
                      'irritants:
                      (let () (declare (not safe)) (cons _f72778_ '())))
                     __obj72791)))
        (let ((_tgroup72781_ (make-thread-group _name72777_)))
          (declare (not safe))
          (spawn-actor _f72778_ _args72779_ _name72777_ _tgroup72781_))))
    (define spawn-actor
      (lambda (_f72750_ _args72751_ _name72752_ _tgroup72753_)
        (letrec ((_thread-main72755_
                  (lambda (_thunk72769_)
                    (lambda ()
                      (with-exception-handler
                       (lambda (_exn72772_)
                         (let ((__tmp72793
                                (lambda (_cont72774_)
                                  (if __unhandled-actor-exception-hook
                                      (let ((__tmp72794
                                             (lambda ()
                                               (__unhandled-actor-exception-hook
                                                _cont72774_
                                                _exn72772_))))
                                        (declare (not safe))
                                        (with-catch void __tmp72794))
                                      '#!void)
                                  (let ((__tmp72795
                                         (let ()
                                           (declare (not safe))
                                           (##continuation-last _cont72774_))))
                                    (declare (not safe))
                                    (##continuation-graft
                                     __tmp72795
                                     ##primordial-exception-handler
                                     _exn72772_)))))
                           (declare (not safe))
                           (##continuation-capture __tmp72793)))
                       _thunk72769_)))))
          (let* ((_thunk72758_
                  (if (let () (declare (not safe)) (null? _args72751_))
                      _f72750_
                      (lambda () (apply _f72750_ _args72751_))))
                 (_thunk72761_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (with-exception-stack-trace__0 _thunk72758_))))
                 (_tgroup72766_
                  (let ((_$e72763_ _tgroup72753_))
                    (if _$e72763_
                        _$e72763_
                        (let ()
                          (declare (not safe))
                          (current-thread-group))))))
            (thread-start!
             (thread-init!
              (construct-actor-thread '#f '0)
              (let () (declare (not safe)) (_thread-main72755_ _thunk72761_))
              _name72752_
              _tgroup72766_))))))
    (define spawn-thread__%
      (lambda (_thunk72728_ _name72729_ _tgroup72730_)
        (thread-start! (make-thread _thunk72728_ _name72729_ _tgroup72730_))))
    (define spawn-thread__0
      (lambda (_thunk72735_)
        (let* ((_name72737_ absent-obj) (_tgroup72739_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk72735_ _name72737_ _tgroup72739_))))
    (define spawn-thread__1
      (lambda (_thunk72741_ _name72742_)
        (let ((_tgroup72744_ absent-obj))
          (declare (not safe))
          (spawn-thread__% _thunk72741_ _name72742_ _tgroup72744_))))
    (define spawn-thread
      (lambda _g72797_
        (let ((_g72796_ (let () (declare (not safe)) (##length _g72797_))))
          (cond ((let () (declare (not safe)) (##fx= _g72796_ 1))
                 (apply (lambda (_thunk72735_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__0 _thunk72735_)))
                        _g72797_))
                ((let () (declare (not safe)) (##fx= _g72796_ 2))
                 (apply (lambda (_thunk72741_ _name72742_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__1 _thunk72741_ _name72742_)))
                        _g72797_))
                ((let () (declare (not safe)) (##fx= _g72796_ 3))
                 (apply (lambda (_thunk72746_ _name72747_ _tgroup72748_)
                          (let ()
                            (declare (not safe))
                            (spawn-thread__%
                             _thunk72746_
                             _name72747_
                             _tgroup72748_)))
                        _g72797_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g72797_))))))
    (define thread-local-ref__%
      (lambda (_key72712_ _default72713_)
        (let ((_tab72715_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-ref__% _tab72715_ _key72712_ _default72713_))))
    (define thread-local-ref__0
      (lambda (_key72720_)
        (let ((_default72722_ absent-obj))
          (declare (not safe))
          (thread-local-ref__% _key72720_ _default72722_))))
    (define thread-local-ref
      (lambda _g72799_
        (let ((_g72798_ (let () (declare (not safe)) (##length _g72799_))))
          (cond ((let () (declare (not safe)) (##fx= _g72798_ 1))
                 (apply (lambda (_key72720_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__0 _key72720_)))
                        _g72799_))
                ((let () (declare (not safe)) (##fx= _g72798_ 2))
                 (apply (lambda (_key72724_ _default72725_)
                          (let ()
                            (declare (not safe))
                            (thread-local-ref__% _key72724_ _default72725_)))
                        _g72799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g72799_))))))
    (define thread-local-get
      (lambda (_key72709_)
        (let () (declare (not safe)) (thread-local-ref__% _key72709_ '#f))))
    (define thread-local-set!
      (lambda (_key72704_ _value72705_)
        (let ((_tab72707_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-put! _tab72707_ _key72704_ _value72705_))))
    (define thread-local-clear!
      (lambda (_key72700_)
        (let ((_tab72702_ (let () (declare (not safe)) (thread-local-table))))
          (declare (not safe))
          (hash-remove! _tab72702_ _key72700_))))
    (define thread-local-table
      (lambda ()
        (let ((_thr72686_ (current-thread)))
          (if (actor-thread? _thr72686_)
              (let ((_$e72688_ (actor-thread-locals _thr72686_)))
                (if _$e72688_
                    (values _$e72688_)
                    (let ((_tab72691_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _thr72686_ _tab72691_)
                      _tab72691_)))
              (if (let ()
                    (declare (not safe))
                    (eq? _thr72686_ ##primordial-thread))
                  __primordial-thread-locals
                  (begin
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_$e72693_
                           (let ()
                             (declare (not safe))
                             (hash-get __thread-locals _thr72686_))))
                      (if _$e72693_
                          ((lambda (_tab72696_)
                             (mutex-unlock! __thread-locals-mutex)
                             _tab72696_)
                           _$e72693_)
                          (let ((_tab72698_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let ()
                              (declare (not safe))
                              (hash-put!
                               __thread-locals
                               _thr72686_
                               _tab72698_))
                            (mutex-unlock! __thread-locals-mutex)
                            _tab72698_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook-set!
      (lambda (_proc72683_)
        (if (let () (declare (not safe)) (procedure? _proc72683_))
            '#!void
            (raise (let ((__obj72792
                          (let ()
                            (declare (not safe))
                            (##structure Error::t '#f '#f '#f '#f))))
                     (Error:::init!
                      __obj72792
                      '"Bad argument; expected procedure or #f"
                      'where:
                      'unhandler-actor-exception-hook-set!
                      'irritants:
                      (let () (declare (not safe)) (cons _proc72683_ '())))
                     __obj72792)))
        (set! __unhandled-actor-exception-hook _proc72683_)))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define with-lock
      (lambda (_mx72671_ _proc72672_)
        (let ((_handler72674_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_e72676_)
             (let ((__tmp72800
                    (lambda ()
                      (mutex-unlock! _mx72671_)
                      (_handler72674_ _e72676_))))
               (declare (not safe))
               (with-catch void __tmp72800))
             (let ()
               (declare (not safe))
               (##thread-end-with-uncaught-exception! _e72676_)))
           (lambda ()
             (mutex-lock! _mx72671_)
             (let ((_result72680_ (_proc72672_)))
               (mutex-unlock! _mx72671_)
               _result72680_))))))
    (define with-dynamic-lock
      (lambda (_mx72666_ _proc72667_)
        (dynamic-wind
         (lambda () (mutex-lock! _mx72666_))
         _proc72667_
         (lambda () (mutex-unlock! _mx72666_)))))
    (define with-exception-stack-trace__%
      (lambda (_thunk72647_ _error-port72648_)
        (with-exception-handler
         (let ((_E72650_ (current-exception-handler)))
           (lambda (_exn72652_)
             (continuation-capture
              (lambda (_cont72654_)
                (if (dump-stack-trace?)
                    (let ()
                      (declare (not safe))
                      (dump-stack-trace!__%
                       _cont72654_
                       _exn72652_
                       _error-port72648_))
                    '#!void)
                (_E72650_ _exn72652_)))))
         _thunk72647_)))
    (define with-exception-stack-trace__0
      (lambda (_thunk72659_)
        (let ((_error-port72661_ (current-error-port)))
          (declare (not safe))
          (with-exception-stack-trace__% _thunk72659_ _error-port72661_))))
    (define with-exception-stack-trace
      (lambda _g72802_
        (let ((_g72801_ (let () (declare (not safe)) (##length _g72802_))))
          (cond ((let () (declare (not safe)) (##fx= _g72801_ 1))
                 (apply (lambda (_thunk72659_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__0 _thunk72659_)))
                        _g72802_))
                ((let () (declare (not safe)) (##fx= _g72801_ 2))
                 (apply (lambda (_thunk72663_ _error-port72664_)
                          (let ()
                            (declare (not safe))
                            (with-exception-stack-trace__%
                             _thunk72663_
                             _error-port72664_)))
                        _g72802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g72802_))))))
    (define dump-stack-trace!__%
      (lambda (_cont72628_ _exn72629_ _error-port72630_)
        (let ((_out72632_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _out72632_))
          (display '"*** Unhandled exception in " _out72632_)
          (display (current-thread) _out72632_)
          (newline _out72632_)
          (display-exception _exn72629_ _out72632_)
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _exn72629_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _out72632_)
                (newline _out72632_)
                (display-continuation-backtrace _cont72628_ _out72632_)))
          (let ((__tmp72803 (get-output-string _out72632_)))
            (declare (not safe))
            (##write-string __tmp72803 _error-port72630_)))))
    (define dump-stack-trace!__0
      (lambda (_cont72637_ _exn72638_)
        (let ((_error-port72640_ (current-error-port)))
          (declare (not safe))
          (dump-stack-trace!__% _cont72637_ _exn72638_ _error-port72640_))))
    (define dump-stack-trace!
      (lambda _g72805_
        (let ((_g72804_ (let () (declare (not safe)) (##length _g72805_))))
          (cond ((let () (declare (not safe)) (##fx= _g72804_ 2))
                 (apply (lambda (_cont72637_ _exn72638_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__0 _cont72637_ _exn72638_)))
                        _g72805_))
                ((let () (declare (not safe)) (##fx= _g72804_ 3))
                 (apply (lambda (_cont72642_ _exn72643_ _error-port72644_)
                          (let ()
                            (declare (not safe))
                            (dump-stack-trace!__%
                             _cont72642_
                             _exn72643_
                             _error-port72644_)))
                        _g72805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g72805_))))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     gerbil#actor::t
     locals
     nonce)))
