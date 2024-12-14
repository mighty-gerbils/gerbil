(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/compile::timestamp 1734131747)
  (begin
    (declare (not safe))
    (define gx#core-compile-top-syntax
      (lambda (_%stx130477%_)
        (let* ((_%e130478130485%_ _%stx130477%_)
               (_%E130480130489%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130478130485%_)))
               (_%E130479130503%_
                (lambda ()
                  (if (gx#stx-pair? _%e130478130485%_)
                      (let ((_%e130481130493%_
                             (gx#syntax-e _%e130478130485%_)))
                        (let ((_%hd130482130496%_ (##car _%e130481130493%_))
                              (_%tl130483130498%_ (##cdr _%e130481130493%_)))
                          (let* ((_%form130501%_ _%hd130482130496%_)
                                 (__self130506
                                  (gx#syntax-local-e__0 _%form130501%_))
                                 (__method130507
                                  (__method-ref
                                   __self130506
                                   'compile-top-syntax)))
                            (if __method130507
                                (__method130507 __self130506 _%stx130477%_)
                                (begin
                                  (error '"Missing method"
                                         __self130506
                                         'compile-top-syntax)
                                  '#!void)))))
                      (_%E130480130489%_)))))
          (_%E130479130503%_))))
    (define gx#core-expander::compile-top-syntax
      (lambda (_%self129320130423%_ _%stx130425%_)
        (let* ((_%self130427%_ _%self129320130423%_)
               (_%self130429%_ _%self130427%_)
               (_%self130438130446%_ _%self130429%_)
               (_%E130440130450%_
                (lambda ()
                  (error '"No clause matching"
                         _%self130438130446%_
                         '((core-expander _ _ K)))
                  '#!void))
               (_%K130441130463%_
                (lambda (_%K130453%_)
                  (let ((_%$e130455%_ (gx#stx-source _%stx130425%_)))
                    (if _%$e130455%_
                        ((lambda (_%g130457130459%_)
                           (gx#stx-wrap-source
                            (_%K130453%_ _%stx130425%_)
                            _%g130457130459%_))
                         _%$e130455%_)
                        (_%K130453%_ _%stx130425%_)))))
               (_%e130442130466%_
                (##unchecked-structure-ref _%self130438130446%_ '1 '#f '#f))
               (_%e130443130469%_
                (##unchecked-structure-ref _%self130438130446%_ '2 '#f '#f))
               (_%e130444130472%_
                (##unchecked-structure-ref _%self130438130446%_ '3 '#f '#f))
               (_%K130475%_ _%e130444130472%_))
          (_%K130441130463%_ _%K130475%_))))
    (__bind-method!__%
     gx#core-expander::t
     'compile-top-syntax
     gx#core-expander::compile-top-syntax
     '#f)
    (define gx#core-compile-top-error
      (lambda (_%stx130297%_)
        (gx#raise-syntax-error 'compile '"Cannot compile form" _%stx130297%_)))
    (define gx#core-compile-top-begin%
      (lambda (_%stx130267%_)
        (let* ((_%e130268130275%_ _%stx130267%_)
               (_%E130270130279%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130268130275%_)))
               (_%E130269130293%_
                (lambda ()
                  (if (gx#stx-pair? _%e130268130275%_)
                      (let ((_%e130271130283%_
                             (gx#syntax-e _%e130268130275%_)))
                        (let ((_%hd130272130286%_ (##car _%e130271130283%_))
                              (_%tl130273130288%_ (##cdr _%e130271130283%_)))
                          (let ((_%body130291%_ _%tl130273130288%_))
                            (cons '%#begin
                                  (gx#stx-map1
                                   gx#core-compile-top-syntax
                                   _%body130291%_)))))
                      (_%E130270130279%_)))))
          (_%E130269130293%_))))
    (define gx#core-compile-top-begin-syntax%
      (lambda (_%stx130236%_)
        (let* ((_%e130237130244%_ _%stx130236%_)
               (_%E130239130248%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130237130244%_)))
               (_%E130238130263%_
                (lambda ()
                  (if (gx#stx-pair? _%e130237130244%_)
                      (let ((_%e130240130252%_
                             (gx#syntax-e _%e130237130244%_)))
                        (let ((_%hd130241130255%_ (##car _%e130240130252%_))
                              (_%tl130242130257%_ (##cdr _%e130240130252%_)))
                          (let ((_%body130260%_ _%tl130242130257%_))
                            (cons '%#begin-syntax
                                  (__call-with-parameters
                                   (lambda ()
                                     (gx#stx-map1
                                      gx#core-compile-top-syntax
                                      _%body130260%_))
                                   gx#current-expander-phi
                                   (##fx+ (gx#current-expander-phi) '1))))))
                      (_%E130239130248%_)))))
          (_%E130238130263%_))))
    (define gx#core-compile-top-begin-foreign%
      (lambda (_%stx130206%_)
        (let* ((_%e130207130214%_ _%stx130206%_)
               (_%E130209130218%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130207130214%_)))
               (_%E130208130232%_
                (lambda ()
                  (if (gx#stx-pair? _%e130207130214%_)
                      (let ((_%e130210130222%_
                             (gx#syntax-e _%e130207130214%_)))
                        (let ((_%hd130211130225%_ (##car _%e130210130222%_))
                              (_%tl130212130227%_ (##cdr _%e130210130222%_)))
                          (let ((_%body130230%_ _%tl130212130227%_))
                            (cons '%#begin-foreign _%body130230%_))))
                      (_%E130209130218%_)))))
          (_%E130208130232%_))))
    (define gx#core-compile-top-begin-annotation%
      (lambda (_%stx130152%_)
        (let* ((_%e130153130166%_ _%stx130152%_)
               (_%E130155130170%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130153130166%_)))
               (_%E130154130202%_
                (lambda ()
                  (if (gx#stx-pair? _%e130153130166%_)
                      (let ((_%e130156130174%_
                             (gx#syntax-e _%e130153130166%_)))
                        (let ((_%hd130157130177%_ (##car _%e130156130174%_))
                              (_%tl130158130179%_ (##cdr _%e130156130174%_)))
                          (if (gx#stx-pair? _%tl130158130179%_)
                              (let ((_%e130159130182%_
                                     (gx#syntax-e _%tl130158130179%_)))
                                (let ((_%hd130160130185%_
                                       (##car _%e130159130182%_))
                                      (_%tl130161130187%_
                                       (##cdr _%e130159130182%_)))
                                  (let ((_%ann130190%_ _%hd130160130185%_))
                                    (if (gx#stx-pair? _%tl130161130187%_)
                                        (let ((_%e130162130192%_
                                               (gx#syntax-e
                                                _%tl130161130187%_)))
                                          (let ((_%hd130163130195%_
                                                 (##car _%e130162130192%_))
                                                (_%tl130164130197%_
                                                 (##cdr _%e130162130192%_)))
                                            (let ((_%expr130200%_
                                                   _%hd130163130195%_))
                                              (if (gx#stx-null?
                                                   _%tl130164130197%_)
                                                  (gx#core-compile-top-syntax
                                                   _%expr130200%_)
                                                  (_%E130155130170%_)))))
                                        (_%E130155130170%_)))))
                              (_%E130155130170%_))))
                      (_%E130155130170%_)))))
          (_%E130154130202%_))))
    (define gx#core-compile-top-import%
      (lambda (_%stx130122%_)
        (let* ((_%e130123130130%_ _%stx130122%_)
               (_%E130125130134%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130123130130%_)))
               (_%E130124130148%_
                (lambda ()
                  (if (gx#stx-pair? _%e130123130130%_)
                      (let ((_%e130126130138%_
                             (gx#syntax-e _%e130123130130%_)))
                        (let ((_%hd130127130141%_ (##car _%e130126130138%_))
                              (_%tl130128130143%_ (##cdr _%e130126130138%_)))
                          (let ((_%body130146%_ _%tl130128130143%_))
                            (cons '%#import _%body130146%_))))
                      (_%E130125130134%_)))))
          (_%E130124130148%_))))
    (define gx#core-compile-top-module%
      (lambda (_%stx130079%_)
        (let* ((_%e130080130090%_ _%stx130079%_)
               (_%E130082130094%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130080130090%_)))
               (_%E130081130118%_
                (lambda ()
                  (if (gx#stx-pair? _%e130080130090%_)
                      (let ((_%e130083130098%_
                             (gx#syntax-e _%e130080130090%_)))
                        (let ((_%hd130084130101%_ (##car _%e130083130098%_))
                              (_%tl130085130103%_ (##cdr _%e130083130098%_)))
                          (if (gx#stx-pair? _%tl130085130103%_)
                              (let ((_%e130086130106%_
                                     (gx#syntax-e _%tl130085130103%_)))
                                (let ((_%hd130087130109%_
                                       (##car _%e130086130106%_))
                                      (_%tl130088130111%_
                                       (##cdr _%e130086130106%_)))
                                  (let* ((_%hd130114%_ _%hd130087130109%_)
                                         (_%body130116%_ _%tl130088130111%_))
                                    (cons '%#module
                                          (cons (##structure-ref
                                                 (gx#syntax-local-e__0
                                                  _%hd130114%_)
                                                 '1
                                                 gx#expander-context::t
                                                 '#f)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%body130116%_))))))
                              (_%E130082130094%_))))
                      (_%E130082130094%_)))))
          (_%E130081130118%_))))
    (define gx#core-compile-top-export%
      (lambda (_%stx130049%_)
        (let* ((_%e130050130057%_ _%stx130049%_)
               (_%E130052130061%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130050130057%_)))
               (_%E130051130075%_
                (lambda ()
                  (if (gx#stx-pair? _%e130050130057%_)
                      (let ((_%e130053130065%_
                             (gx#syntax-e _%e130050130057%_)))
                        (let ((_%hd130054130068%_ (##car _%e130053130065%_))
                              (_%tl130055130070%_ (##cdr _%e130053130065%_)))
                          (let ((_%body130073%_ _%tl130055130070%_))
                            (cons '%#export _%body130073%_))))
                      (_%E130052130061%_)))))
          (_%E130051130075%_))))
    (define gx#core-compile-top-provide%
      (lambda (_%stx130019%_)
        (let* ((_%e130020130027%_ _%stx130019%_)
               (_%E130022130031%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e130020130027%_)))
               (_%E130021130045%_
                (lambda ()
                  (if (gx#stx-pair? _%e130020130027%_)
                      (let ((_%e130023130035%_
                             (gx#syntax-e _%e130020130027%_)))
                        (let ((_%hd130024130038%_ (##car _%e130023130035%_))
                              (_%tl130025130040%_ (##cdr _%e130023130035%_)))
                          (let ((_%body130043%_ _%tl130025130040%_))
                            (cons '%#provide _%body130043%_))))
                      (_%E130022130031%_)))))
          (_%E130021130045%_))))
    (define gx#core-compile-top-extern%
      (lambda (_%stx129989%_)
        (let* ((_%e129990129997%_ _%stx129989%_)
               (_%E129992130001%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129990129997%_)))
               (_%E129991130015%_
                (lambda ()
                  (if (gx#stx-pair? _%e129990129997%_)
                      (let ((_%e129993130005%_
                             (gx#syntax-e _%e129990129997%_)))
                        (let ((_%hd129994130008%_ (##car _%e129993130005%_))
                              (_%tl129995130010%_ (##cdr _%e129993130005%_)))
                          (let ((_%body130013%_ _%tl129995130010%_))
                            (cons '%#extern _%body130013%_))))
                      (_%E129992130001%_)))))
          (_%E129991130015%_))))
    (define gx#core-compile-top-define-values%
      (lambda (_%stx129935%_)
        (let* ((_%e129936129949%_ _%stx129935%_)
               (_%E129938129953%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129936129949%_)))
               (_%E129937129985%_
                (lambda ()
                  (if (gx#stx-pair? _%e129936129949%_)
                      (let ((_%e129939129957%_
                             (gx#syntax-e _%e129936129949%_)))
                        (let ((_%hd129940129960%_ (##car _%e129939129957%_))
                              (_%tl129941129962%_ (##cdr _%e129939129957%_)))
                          (if (gx#stx-pair? _%tl129941129962%_)
                              (let ((_%e129942129965%_
                                     (gx#syntax-e _%tl129941129962%_)))
                                (let ((_%hd129943129968%_
                                       (##car _%e129942129965%_))
                                      (_%tl129944129970%_
                                       (##cdr _%e129942129965%_)))
                                  (let ((_%hd129973%_ _%hd129943129968%_))
                                    (if (gx#stx-pair? _%tl129944129970%_)
                                        (let ((_%e129945129975%_
                                               (gx#syntax-e
                                                _%tl129944129970%_)))
                                          (let ((_%hd129946129978%_
                                                 (##car _%e129945129975%_))
                                                (_%tl129947129980%_
                                                 (##cdr _%e129945129975%_)))
                                            (let ((_%expr129983%_
                                                   _%hd129946129978%_))
                                              (if (gx#stx-null?
                                                   _%tl129947129980%_)
                                                  (cons '%#define-values
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-runtime-bind
                                                               _%hd129973%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%expr129983%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129938129953%_)))))
                                        (_%E129938129953%_)))))
                              (_%E129938129953%_))))
                      (_%E129938129953%_)))))
          (_%E129937129985%_))))
    (define gx#core-compile-top-define-syntax%
      (lambda (_%stx129880%_)
        (let* ((_%e129881129894%_ _%stx129880%_)
               (_%E129883129898%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129881129894%_)))
               (_%E129882129931%_
                (lambda ()
                  (if (gx#stx-pair? _%e129881129894%_)
                      (let ((_%e129884129902%_
                             (gx#syntax-e _%e129881129894%_)))
                        (let ((_%hd129885129905%_ (##car _%e129884129902%_))
                              (_%tl129886129907%_ (##cdr _%e129884129902%_)))
                          (if (gx#stx-pair? _%tl129886129907%_)
                              (let ((_%e129887129910%_
                                     (gx#syntax-e _%tl129886129907%_)))
                                (let ((_%hd129888129913%_
                                       (##car _%e129887129910%_))
                                      (_%tl129889129915%_
                                       (##cdr _%e129887129910%_)))
                                  (let ((_%hd129918%_ _%hd129888129913%_))
                                    (if (gx#stx-pair? _%tl129889129915%_)
                                        (let ((_%e129890129920%_
                                               (gx#syntax-e
                                                _%tl129889129915%_)))
                                          (let ((_%hd129891129923%_
                                                 (##car _%e129890129920%_))
                                                (_%tl129892129925%_
                                                 (##cdr _%e129890129920%_)))
                                            (let ((_%expr129928%_
                                                   _%hd129891129923%_))
                                              (if (gx#stx-null?
                                                   _%tl129892129925%_)
                                                  (cons '%#define-syntax
                                                        (cons _%hd129918%_
                                                              (cons (__call-with-parameters
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda ()
                               (gx#core-compile-top-syntax _%expr129928%_))
                             gx#current-expander-phi
                             (##fx+ (gx#current-expander-phi) '1))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129883129898%_)))))
                                        (_%E129883129898%_)))))
                              (_%E129883129898%_))))
                      (_%E129883129898%_)))))
          (_%E129882129931%_))))
    (define gx#core-compile-top-define-alias%
      (lambda (_%stx129850%_)
        (let* ((_%e129851129858%_ _%stx129850%_)
               (_%E129853129862%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129851129858%_)))
               (_%E129852129876%_
                (lambda ()
                  (if (gx#stx-pair? _%e129851129858%_)
                      (let ((_%e129854129866%_
                             (gx#syntax-e _%e129851129858%_)))
                        (let ((_%hd129855129869%_ (##car _%e129854129866%_))
                              (_%tl129856129871%_ (##cdr _%e129854129866%_)))
                          (let ((_%body129874%_ _%tl129856129871%_))
                            (cons '%#define-alias _%body129874%_))))
                      (_%E129853129862%_)))))
          (_%E129852129876%_))))
    (define gx#core-compile-top-define-runtime%
      (lambda (_%stx129820%_)
        (let* ((_%e129821129828%_ _%stx129820%_)
               (_%E129823129832%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129821129828%_)))
               (_%E129822129846%_
                (lambda ()
                  (if (gx#stx-pair? _%e129821129828%_)
                      (let ((_%e129824129836%_
                             (gx#syntax-e _%e129821129828%_)))
                        (let ((_%hd129825129839%_ (##car _%e129824129836%_))
                              (_%tl129826129841%_ (##cdr _%e129824129836%_)))
                          (let ((_%body129844%_ _%tl129826129841%_))
                            (cons '%#define-runtime _%body129844%_))))
                      (_%E129823129832%_)))))
          (_%E129822129846%_))))
    (define gx#core-compile-top-declare%
      (lambda (_%stx129790%_)
        (let* ((_%e129791129798%_ _%stx129790%_)
               (_%E129793129802%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129791129798%_)))
               (_%E129792129816%_
                (lambda ()
                  (if (gx#stx-pair? _%e129791129798%_)
                      (let ((_%e129794129806%_
                             (gx#syntax-e _%e129791129798%_)))
                        (let ((_%hd129795129809%_ (##car _%e129794129806%_))
                              (_%tl129796129811%_ (##cdr _%e129794129806%_)))
                          (let ((_%decls129814%_ _%tl129796129811%_))
                            (cons '%#declare _%decls129814%_))))
                      (_%E129793129802%_)))))
          (_%E129792129816%_))))
    (define gx#core-compile-top-lambda%
      (lambda (_%stx129760%_)
        (let* ((_%e129761129768%_ _%stx129760%_)
               (_%E129763129772%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129761129768%_)))
               (_%E129762129786%_
                (lambda ()
                  (if (gx#stx-pair? _%e129761129768%_)
                      (let ((_%e129764129776%_
                             (gx#syntax-e _%e129761129768%_)))
                        (let ((_%hd129765129779%_ (##car _%e129764129776%_))
                              (_%tl129766129781%_ (##cdr _%e129764129776%_)))
                          (let ((_%clause129784%_ _%tl129766129781%_))
                            (cons '%#lambda
                                  (gx#core-compile-top-lambda-clause
                                   _%clause129784%_)))))
                      (_%E129763129772%_)))))
          (_%E129762129786%_))))
    (define gx#core-compile-top-lambda-clause
      (lambda (_%stx129717%_)
        (let* ((_%e129718129728%_ _%stx129717%_)
               (_%E129720129732%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129718129728%_)))
               (_%E129719129756%_
                (lambda ()
                  (if (gx#stx-pair? _%e129718129728%_)
                      (let ((_%e129721129736%_
                             (gx#syntax-e _%e129718129728%_)))
                        (let ((_%hd129722129739%_ (##car _%e129721129736%_))
                              (_%tl129723129741%_ (##cdr _%e129721129736%_)))
                          (let ((_%hd129744%_ _%hd129722129739%_))
                            (if (gx#stx-pair? _%tl129723129741%_)
                                (let ((_%e129724129746%_
                                       (gx#syntax-e _%tl129723129741%_)))
                                  (let ((_%hd129725129749%_
                                         (##car _%e129724129746%_))
                                        (_%tl129726129751%_
                                         (##cdr _%e129724129746%_)))
                                    (let ((_%body129754%_ _%hd129725129749%_))
                                      (if (gx#stx-null? _%tl129726129751%_)
                                          (cons (gx#stx-map1
                                                 gx#core-compile-top-runtime-bind
                                                 _%hd129744%_)
                                                (cons (gx#core-compile-top-syntax
                                                       _%body129754%_)
                                                      '()))
                                          (_%E129720129732%_)))))
                                (_%E129720129732%_)))))
                      (_%E129720129732%_)))))
          (_%E129719129756%_))))
    (define gx#core-compile-top-case-lambda%
      (lambda (_%stx129687%_)
        (let* ((_%e129688129695%_ _%stx129687%_)
               (_%E129690129699%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129688129695%_)))
               (_%E129689129713%_
                (lambda ()
                  (if (gx#stx-pair? _%e129688129695%_)
                      (let ((_%e129691129703%_
                             (gx#syntax-e _%e129688129695%_)))
                        (let ((_%hd129692129706%_ (##car _%e129691129703%_))
                              (_%tl129693129708%_ (##cdr _%e129691129703%_)))
                          (let ((_%clauses129711%_ _%tl129693129708%_))
                            (cons '%#case-lambda
                                  (gx#stx-map1
                                   gx#core-compile-top-lambda-clause
                                   _%clauses129711%_)))))
                      (_%E129690129699%_)))))
          (_%E129689129713%_))))
    (define gx#core-compile-top-let-values%__%
      (lambda (_%stx129622%_ _%form129623%_)
        (let* ((_%e129624129637%_ _%stx129622%_)
               (_%E129626129641%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129624129637%_)))
               (_%E129625129673%_
                (lambda ()
                  (if (gx#stx-pair? _%e129624129637%_)
                      (let ((_%e129627129645%_
                             (gx#syntax-e _%e129624129637%_)))
                        (let ((_%hd129628129648%_ (##car _%e129627129645%_))
                              (_%tl129629129650%_ (##cdr _%e129627129645%_)))
                          (if (gx#stx-pair? _%tl129629129650%_)
                              (let ((_%e129630129653%_
                                     (gx#syntax-e _%tl129629129650%_)))
                                (let ((_%hd129631129656%_
                                       (##car _%e129630129653%_))
                                      (_%tl129632129658%_
                                       (##cdr _%e129630129653%_)))
                                  (let ((_%hd129661%_ _%hd129631129656%_))
                                    (if (gx#stx-pair? _%tl129632129658%_)
                                        (let ((_%e129633129663%_
                                               (gx#syntax-e
                                                _%tl129632129658%_)))
                                          (let ((_%hd129634129666%_
                                                 (##car _%e129633129663%_))
                                                (_%tl129635129668%_
                                                 (##cdr _%e129633129663%_)))
                                            (let ((_%body129671%_
                                                   _%hd129634129666%_))
                                              (if (gx#stx-null?
                                                   _%tl129635129668%_)
                                                  (cons _%form129623%_
                                                        (cons (gx#stx-map1
                                                               gx#core-compile-top-lambda-clause
                                                               _%hd129661%_)
                                                              (cons (gx#core-compile-top-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body129671%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129626129641%_)))))
                                        (_%E129626129641%_)))))
                              (_%E129626129641%_))))
                      (_%E129626129641%_)))))
          (_%E129625129673%_))))
    (define gx#core-compile-top-let-values%__0
      (lambda (_%stx129680%_)
        (let ((_%form129682%_ '%#let-values))
          (gx#core-compile-top-let-values%__% _%stx129680%_ _%form129682%_))))
    (define gx#core-compile-top-let-values%
      (lambda _g130509_
        (let ((_g130508_ (##length _g130509_)))
          (cond ((##fx= _g130508_ 1)
                 (apply gx#core-compile-top-let-values%__0 _g130509_))
                ((##fx= _g130508_ 2)
                 (apply gx#core-compile-top-let-values%__% _g130509_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-compile-top-let-values%
                  _g130509_))))))
    (define gx#core-compile-top-letrec-values%
      (lambda (_%stx129619%_)
        (gx#core-compile-top-let-values%__% _%stx129619%_ '%#letrec-values)))
    (define gx#core-compile-top-letrec*-values%
      (lambda (_%stx129617%_)
        (gx#core-compile-top-let-values%__% _%stx129617%_ '%#letrec*-values)))
    (define gx#core-compile-top-quote%
      (lambda (_%stx129576%_)
        (let* ((_%e129577129587%_ _%stx129576%_)
               (_%E129579129591%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129577129587%_)))
               (_%E129578129613%_
                (lambda ()
                  (if (gx#stx-pair? _%e129577129587%_)
                      (let ((_%e129580129595%_
                             (gx#syntax-e _%e129577129587%_)))
                        (let ((_%hd129581129598%_ (##car _%e129580129595%_))
                              (_%tl129582129600%_ (##cdr _%e129580129595%_)))
                          (if (gx#stx-pair? _%tl129582129600%_)
                              (let ((_%e129583129603%_
                                     (gx#syntax-e _%tl129582129600%_)))
                                (let ((_%hd129584129606%_
                                       (##car _%e129583129603%_))
                                      (_%tl129585129608%_
                                       (##cdr _%e129583129603%_)))
                                  (let ((_%e129611%_ _%hd129584129606%_))
                                    (if (gx#stx-null? _%tl129585129608%_)
                                        (cons '%#quote
                                              (cons (gx#syntax->datum
                                                     _%e129611%_)
                                                    '()))
                                        (_%E129579129591%_)))))
                              (_%E129579129591%_))))
                      (_%E129579129591%_)))))
          (_%E129578129613%_))))
    (define gx#core-compile-top-quote-syntax%
      (lambda (_%stx129535%_)
        (let* ((_%e129536129546%_ _%stx129535%_)
               (_%E129538129550%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129536129546%_)))
               (_%E129537129572%_
                (lambda ()
                  (if (gx#stx-pair? _%e129536129546%_)
                      (let ((_%e129539129554%_
                             (gx#syntax-e _%e129536129546%_)))
                        (let ((_%hd129540129557%_ (##car _%e129539129554%_))
                              (_%tl129541129559%_ (##cdr _%e129539129554%_)))
                          (if (gx#stx-pair? _%tl129541129559%_)
                              (let ((_%e129542129562%_
                                     (gx#syntax-e _%tl129541129559%_)))
                                (let ((_%hd129543129565%_
                                       (##car _%e129542129562%_))
                                      (_%tl129544129567%_
                                       (##cdr _%e129542129562%_)))
                                  (let ((_%e129570%_ _%hd129543129565%_))
                                    (if (gx#stx-null? _%tl129544129567%_)
                                        (cons '%#quote-syntax
                                              (cons (gx#core-quote-syntax__0
                                                     _%e129570%_)
                                                    '()))
                                        (_%E129538129550%_)))))
                              (_%E129538129550%_))))
                      (_%E129538129550%_)))))
          (_%E129537129572%_))))
    (define gx#core-compile-top-call%
      (lambda (_%stx129492%_)
        (let* ((_%e129493129503%_ _%stx129492%_)
               (_%E129495129507%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129493129503%_)))
               (_%E129494129531%_
                (lambda ()
                  (if (gx#stx-pair? _%e129493129503%_)
                      (let ((_%e129496129511%_
                             (gx#syntax-e _%e129493129503%_)))
                        (let ((_%hd129497129514%_ (##car _%e129496129511%_))
                              (_%tl129498129516%_ (##cdr _%e129496129511%_)))
                          (if (gx#stx-pair? _%tl129498129516%_)
                              (let ((_%e129499129519%_
                                     (gx#syntax-e _%tl129498129516%_)))
                                (let ((_%hd129500129522%_
                                       (##car _%e129499129519%_))
                                      (_%tl129501129524%_
                                       (##cdr _%e129499129519%_)))
                                  (let* ((_%rator129527%_ _%hd129500129522%_)
                                         (_%args129529%_ _%tl129501129524%_))
                                    (cons '%#call
                                          (cons (gx#core-compile-top-syntax
                                                 _%rator129527%_)
                                                (gx#stx-map1
                                                 gx#core-compile-top-syntax
                                                 _%args129529%_))))))
                              (_%E129495129507%_))))
                      (_%E129495129507%_)))))
          (_%E129494129531%_))))
    (define gx#core-compile-top-if%
      (lambda (_%stx129425%_)
        (let* ((_%e129426129442%_ _%stx129425%_)
               (_%E129428129446%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129426129442%_)))
               (_%E129427129488%_
                (lambda ()
                  (if (gx#stx-pair? _%e129426129442%_)
                      (let ((_%e129429129450%_
                             (gx#syntax-e _%e129426129442%_)))
                        (let ((_%hd129430129453%_ (##car _%e129429129450%_))
                              (_%tl129431129455%_ (##cdr _%e129429129450%_)))
                          (if (gx#stx-pair? _%tl129431129455%_)
                              (let ((_%e129432129458%_
                                     (gx#syntax-e _%tl129431129455%_)))
                                (let ((_%hd129433129461%_
                                       (##car _%e129432129458%_))
                                      (_%tl129434129463%_
                                       (##cdr _%e129432129458%_)))
                                  (let ((_%test129466%_ _%hd129433129461%_))
                                    (if (gx#stx-pair? _%tl129434129463%_)
                                        (let ((_%e129435129468%_
                                               (gx#syntax-e
                                                _%tl129434129463%_)))
                                          (let ((_%hd129436129471%_
                                                 (##car _%e129435129468%_))
                                                (_%tl129437129473%_
                                                 (##cdr _%e129435129468%_)))
                                            (let ((_%K129476%_
                                                   _%hd129436129471%_))
                                              (if (gx#stx-pair?
                                                   _%tl129437129473%_)
                                                  (let ((_%e129438129478%_
                                                         (gx#syntax-e
                                                          _%tl129437129473%_)))
                                                    (let ((_%hd129439129481%_
                                                           (##car _%e129438129478%_))
                                                          (_%tl129440129483%_
                                                           (##cdr _%e129438129478%_)))
                                                      (let ((_%E129486%_
                                                             _%hd129439129481%_))
                                                        (if (gx#stx-null?
                                                             _%tl129440129483%_)
                                                            (cons '%#if
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#core-compile-top-syntax _%test129466%_)
                                (cons (gx#core-compile-top-syntax _%K129476%_)
                                      (cons (gx#core-compile-top-syntax
                                             _%E129486%_)
                                            '()))))
                    (_%E129428129446%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129428129446%_)))))
                                        (_%E129428129446%_)))))
                              (_%E129428129446%_))))
                      (_%E129428129446%_)))))
          (_%E129427129488%_))))
    (define gx#core-compile-top-ref%
      (lambda (_%stx129384%_)
        (let* ((_%e129385129395%_ _%stx129384%_)
               (_%E129387129399%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129385129395%_)))
               (_%E129386129421%_
                (lambda ()
                  (if (gx#stx-pair? _%e129385129395%_)
                      (let ((_%e129388129403%_
                             (gx#syntax-e _%e129385129395%_)))
                        (let ((_%hd129389129406%_ (##car _%e129388129403%_))
                              (_%tl129390129408%_ (##cdr _%e129388129403%_)))
                          (if (gx#stx-pair? _%tl129390129408%_)
                              (let ((_%e129391129411%_
                                     (gx#syntax-e _%tl129390129408%_)))
                                (let ((_%hd129392129414%_
                                       (##car _%e129391129411%_))
                                      (_%tl129393129416%_
                                       (##cdr _%e129391129411%_)))
                                  (let ((_%id129419%_ _%hd129392129414%_))
                                    (if (gx#stx-null? _%tl129393129416%_)
                                        (if (gx#identifier? _%id129419%_)
                                            (cons '%#ref
                                                  (cons (gx#core-compile-top-runtime-ref
                                                         _%id129419%_)
                                                        '()))
                                            (_%E129387129399%_))
                                        (_%E129387129399%_)))))
                              (_%E129387129399%_))))
                      (_%E129387129399%_)))))
          (_%E129386129421%_))))
    (define gx#core-compile-top-setq%
      (lambda (_%stx129330%_)
        (let* ((_%e129331129344%_ _%stx129330%_)
               (_%E129333129348%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%e129331129344%_)))
               (_%E129332129380%_
                (lambda ()
                  (if (gx#stx-pair? _%e129331129344%_)
                      (let ((_%e129334129352%_
                             (gx#syntax-e _%e129331129344%_)))
                        (let ((_%hd129335129355%_ (##car _%e129334129352%_))
                              (_%tl129336129357%_ (##cdr _%e129334129352%_)))
                          (if (gx#stx-pair? _%tl129336129357%_)
                              (let ((_%e129337129360%_
                                     (gx#syntax-e _%tl129336129357%_)))
                                (let ((_%hd129338129363%_
                                       (##car _%e129337129360%_))
                                      (_%tl129339129365%_
                                       (##cdr _%e129337129360%_)))
                                  (let ((_%id129368%_ _%hd129338129363%_))
                                    (if (gx#stx-pair? _%tl129339129365%_)
                                        (let ((_%e129340129370%_
                                               (gx#syntax-e
                                                _%tl129339129365%_)))
                                          (let ((_%hd129341129373%_
                                                 (##car _%e129340129370%_))
                                                (_%tl129342129375%_
                                                 (##cdr _%e129340129370%_)))
                                            (let ((_%expr129378%_
                                                   _%hd129341129373%_))
                                              (if (gx#stx-null?
                                                   _%tl129342129375%_)
                                                  (if (gx#identifier?
                                                       _%id129368%_)
                                                      (cons '%#set!
                                                            (cons (gx#core-compile-top-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%id129368%_)
                          (cons (gx#core-compile-top-syntax _%expr129378%_)
                                '())))
              (_%E129333129348%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%E129333129348%_)))))
                                        (_%E129333129348%_)))))
                              (_%E129333129348%_))))
                      (_%E129333129348%_)))))
          (_%E129332129380%_))))
    (define gx#core-compile-top-runtime-ref
      (lambda (_%id129324%_)
        (let ((_%$e129326%_ (gx#resolve-identifier__0 _%id129324%_)))
          (if _%$e129326%_
              (##unchecked-structure-ref _%$e129326%_ '1 '#f '#f)
              _%id129324%_))))
    (define gx#core-compile-top-runtime-bind
      (lambda (_%hd129322%_)
        (if (gx#identifier? _%hd129322%_)
            (gx#core-compile-top-runtime-ref _%hd129322%_)
            '#f)))))
