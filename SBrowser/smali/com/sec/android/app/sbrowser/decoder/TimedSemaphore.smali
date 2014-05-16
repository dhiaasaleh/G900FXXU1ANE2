.class public Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;
.super Ljava/lang/Object;
.source "TimedSemaphore.java"


# static fields
.field public static final NO_LIMIT:I = 0x0

.field private static final THREAD_POOL_SIZE:I = 0x1


# instance fields
.field private acquireCount:I

.field private final executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private lastCallsPerPeriod:I

.field private limit:I

.field private final ownExecutor:Z

.field private final period:J

.field private periodCount:J

.field private shutdown:Z

.field private task:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private totalAcquireCount:J

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;I)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Time period must be greater 0!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->period:J

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->unit:Ljava/util/concurrent/TimeUnit;

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean v3, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->ownExecutor:Z

    :goto_0
    invoke-virtual {p0, p5}, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->setLimit(I)V

    return-void

    :cond_1
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setContinueExistingPeriodicTasksAfterShutdownPolicy(Z)V

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iput-boolean v4, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->ownExecutor:Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized acquire()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "TimedSemaphore is shut down!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->task:Ljava/util/concurrent/ScheduledFuture;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->startTimer()Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->task:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    const/4 v0, 0x0

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->getLimit()I

    move-result v1

    if-lez v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->acquireCount:I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->getLimit()I

    move-result v2

    if-ge v1, v2, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    :try_start_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->acquireCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->acquireCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method declared-synchronized endOfPeriod()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->acquireCount:I

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->lastCallsPerPeriod:I

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->totalAcquireCount:J

    iget v2, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->acquireCount:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->totalAcquireCount:J

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->periodCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->periodCount:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->acquireCount:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAcquireCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->acquireCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAvailablePermits()I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->getLimit()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->getAcquireCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAverageCallsPerPeriod()D
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->periodCount:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->totalAcquireCount:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->periodCount:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    long-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public declared-synchronized getLastAcquiresPerPeriod()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->lastCallsPerPeriod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getLimit()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->period:J

    return-wide v0
.end method

.method public getUnit()Ljava/util/concurrent/TimeUnit;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->unit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method public declared-synchronized isShutdown()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized setLimit(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->limit:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->shutdown:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->ownExecutor:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->task:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->task:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->shutdown:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected startTimer()Ljava/util/concurrent/ScheduledFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->getExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore$1;-><init>(Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->getPeriod()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->getPeriod()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/decoder/TimedSemaphore;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v6

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method
