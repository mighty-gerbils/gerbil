(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1710487492)
  (begin
    (define load-path
      (lambda () (let () (declare (not safe)) (##get-module-search-order))))
    (define add-load-path!
      (lambda _paths78138_
        (let* ((_current78140_ (let () (declare (not safe)) (load-path)))
               (_paths78142_ (map path-expand _paths78138_))
               (_paths78146_
                (filter (lambda (_x78144_)
                          (let ((__tmp78149 (member _x78144_ _current78140_)))
                            (declare (not safe))
                            (not __tmp78149)))
                        _paths78142_)))
          (for-each module-search-order-add! (reverse _paths78146_)))))
    (define set-load-path!
      (lambda (_paths78136_)
        (let ()
          (declare (not safe))
          (##set-module-search-order! _paths78136_))))
    (define reset-load-path!
      (lambda ()
        (let () (declare (not safe)) (##set-module-search-order! '()))))
    (define load-module
      (lambda (_modref78128_)
        (if (let () (declare (not safe)) (string? _modref78128_))
            (let () (declare (not safe)) (load-module/compat__0 _modref78128_))
            (let ((_modstr78130_ (symbol->string _modref78128_)))
              (if (or (let ((__tmp78155 (current-module-registry))
                            (__tmp78154 (string-append _modstr78130_ '"__rt")))
                        (declare (not safe))
                        (hash-get __tmp78155 __tmp78154))
                      (let ((__tmp78157 (current-module-registry))
                            (__tmp78156 (string-append _modstr78130_ '"__0")))
                        (declare (not safe))
                        (hash-get __tmp78157 __tmp78156)))
                  (begin
                    (let ((__tmp78152
                           (let ((__tmp78153
                                  (let ()
                                    (declare (not safe))
                                    (cons _modref78128_ '()))))
                             (declare (not safe))
                             (cons 'ignore __tmp78153))))
                      (declare (not safe))
                      (displayln __tmp78152))
                    '#!void)
                  (if (let ()
                        (declare (not safe))
                        (hash-get __modules _modref78128_))
                      '#!void
                      (begin
                        (let ((__tmp78150
                               (let ((__tmp78151
                                      (let ()
                                        (declare (not safe))
                                        (cons _modref78128_ '()))))
                                 (declare (not safe))
                                 (cons 'load __tmp78151))))
                          (declare (not safe))
                          (displayln __tmp78150))
                        (let ()
                          (declare (not safe))
                          (__load-module _modref78128_))
                        (let ()
                          (declare (not safe))
                          (hash-put! __modules _modref78128_ 'loaded)))))))))
    (define __load-module
      (lambda (_modref78084_)
        (let* ((_modstr78086_ (symbol->string _modref78084_))
               (_mod.o178088_ (string-append _modstr78086_ '".o1")))
          (let _loop78091_ ((_paths78093_
                             (let () (declare (not safe)) (load-path))))
            (let* ((_paths7809478102_ _paths78093_)
                   (_else7809678110_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (error '"module not found" _modref78084_))))
                   (_K7809878116_
                    (lambda (_rest78113_ _path78114_)
                      (if (file-exists?
                           (path-expand _mod.o178088_ _path78114_))
                          (load (path-expand _modstr78086_ _path78114_))
                          (let ()
                            (declare (not safe))
                            (_loop78091_ _rest78113_))))))
              (if (let () (declare (not safe)) (##pair? _paths7809478102_))
                  (let ((_hd7809978119_
                         (let ()
                           (declare (not safe))
                           (##car _paths7809478102_)))
                        (_tl7810078121_
                         (let ()
                           (declare (not safe))
                           (##cdr _paths7809478102_))))
                    (let* ((_path78124_ _hd7809978119_)
                           (_rest78126_ _tl7810078121_))
                      (declare (not safe))
                      (_K7809878116_ _rest78126_ _path78124_)))
                  (let () (declare (not safe)) (_else7809678110_))))))))
    (define __modules (let () (declare (not safe)) (make-hash-table-eq)))
    (define register-builtin-modules!
      (lambda (_builtin-modules78078_)
        (for-each
         (lambda (_g7807978081_)
           (let ()
             (declare (not safe))
             (hash-put! __modules _g7807978081_ 'builtin)))
         _builtin-modules78078_)))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module/compat__%
      (lambda (_modpath78055_ _reload?78056_)
        (let ((_$e78058_
               (if (let () (declare (not safe)) (not _reload?78056_))
                   (let ((__tmp78158 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp78158 _modpath78055_))
                   '#f)))
          (if _$e78058_
              _$e78058_
              (let ((_$e78061_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath78055_))))
                (if _$e78061_
                    ((lambda (_path78064_)
                       (let ((_lpath78066_ (load _path78064_)))
                         (let ((__tmp78159 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp78159 _modpath78055_ _lpath78066_))
                         _lpath78066_))
                     _$e78061_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath78055_))))))))
    (define load-module/compat__0
      (lambda (_modpath78071_)
        (let ((_reload?78073_ (__reload-module)))
          (declare (not safe))
          (load-module/compat__% _modpath78071_ _reload?78073_))))
    (define load-module/compat
      (lambda _g78161_
        (let ((_g78160_ (let () (declare (not safe)) (##length _g78161_))))
          (cond ((let () (declare (not safe)) (##fx= _g78160_ 1))
                 (apply (lambda (_modpath78071_)
                          (let ()
                            (declare (not safe))
                            (load-module/compat__0 _modpath78071_)))
                        _g78161_))
                ((let () (declare (not safe)) (##fx= _g78160_ 2))
                 (apply (lambda (_modpath78075_ _reload?78076_)
                          (let ()
                            (declare (not safe))
                            (load-module/compat__%
                             _modpath78075_
                             _reload?78076_)))
                        _g78161_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module/compat
                  _g78161_))))))
    (define find-library-module
      (lambda (_modpath77989_)
        (letrec ((_find-compiled-file77991_
                  (lambda (_npath78043_)
                    (let ((_basepath78045_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath78043_ '".o"))))
                      (let _lp78047_ ((_current78049_ '#f) (_n78050_ '1))
                        (let ((_next78052_
                               (let ((__tmp78162 (number->string _n78050_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath78045_
                                  __tmp78162))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next78052_))
                              (let ((__tmp78163
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n78050_ '1))))
                                (declare (not safe))
                                (_lp78047_ _next78052_ __tmp78163))
                              _current78049_))))))
                 (_find-source-file77992_
                  (lambda (_npath78039_)
                    (let ((_spath78041_ (string-append _npath78039_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath78041_))
                          _spath78041_
                          '#f)))))
          (let _lp77994_ ((_rest77996_
                           (let () (declare (not safe)) (load-path))))
            (let* ((_rest7799778005_ _rest77996_)
                   (_else7799978013_ (lambda () '#f))
                   (_K7800178027_
                    (lambda (_rest78016_ _dir78017_)
                      (let* ((_npath78019_
                              (path-expand
                               _modpath77989_
                               (path-expand _dir78017_)))
                             (_$e78021_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file77991_ _npath78019_))))
                        (if _$e78021_
                            (path-normalize _$e78021_)
                            (let ((_$e78024_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file77992_ _npath78019_))))
                              (if _$e78024_
                                  (path-normalize _$e78024_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp77994_ _rest78016_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7799778005_))
                  (let ((_hd7800278030_
                         (let ()
                           (declare (not safe))
                           (##car _rest7799778005_)))
                        (_tl7800378032_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7799778005_))))
                    (let* ((_dir78035_ _hd7800278030_)
                           (_rest78037_ _tl7800378032_))
                      (declare (not safe))
                      (_K7800178027_ _rest78037_ _dir78035_)))
                  (let () (declare (not safe)) (_else7799978013_))))))))))
