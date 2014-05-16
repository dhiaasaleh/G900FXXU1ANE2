.class public final Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;,
        Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;,
        Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field private static final IO_BUFFER_SIZE:I = 0x2000

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_TMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field private static final UTF_8:Ljava/nio/charset/Charset; = null

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final journalFile:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->size:J

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v3, 0x3f40

    invoke-direct {v0, v1, v3, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    iput-wide v4, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->nextSequenceNumber:J

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$1;-><init>(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->directory:Ljava/io/File;

    iput p2, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->appVersion:I

    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iput p3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->valueCount:I

    iput-wide p4, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->maxSize:J

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;)Ljava/io/Writer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800()Ljava/nio/charset/Charset;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->completeEdit(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized completeEdit(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;->entry:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;->access$1400(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;

    move-result-object v2

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->currentEditor:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$700(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    move-result-object v8

    if-eq v8, p1, :cond_0

    new-instance v8, Ljava/lang/IllegalStateException;

    invoke-direct {v8}, Ljava/lang/IllegalStateException;-><init>()V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_0
    if-eqz p2, :cond_2

    :try_start_1
    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$600(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v3, 0x0

    :goto_0
    iget v8, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;->abort()V

    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "edit didn\'t create file "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    iget v8, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->valueCount:I

    if-ge v3, v8, :cond_5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$1000(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)[J

    move-result-object v8

    aget-wide v6, v8, v3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$1000(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v4, v8, v3

    iget-wide v8, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->size:J

    sub-long/2addr v8, v6

    add-long/2addr v8, v4

    iput-wide v8, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->size:J

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_2

    :cond_5
    iget v8, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->redundantOpCount:I

    const/4 v8, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->currentEditor:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    invoke-static {v2, v8}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$702(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$600(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)Z

    move-result v8

    or-int/2addr v8, p2

    if-eqz v8, :cond_9

    const/4 v8, 0x1

    #setter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->readable:Z
    invoke-static {v2, v8}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$602(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;Z)Z

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CLEAN "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$1100(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    iget-wide v8, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v8

    iput-wide v10, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->nextSequenceNumber:J

    #setter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v2, v8, v9}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$1202(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;J)J

    :cond_6
    :goto_3
    iget-wide v8, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->size:J

    iget-wide v10, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->maxSize:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_7
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v9, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :cond_9
    :try_start_2
    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$1100(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "REMOVE "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$1100(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0xa

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3
.end method

.method private static copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)[TT;"
        }
    .end annotation

    array-length v1, p0

    if-le p1, p2, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    :cond_0
    if-ltz p1, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v4

    :cond_2
    sub-int v3, p2, p1

    sub-int v4, v1, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0, p1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public static deleteContents(Ljava/io/File;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->deleteContents(Ljava/io/File;)V

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to delete file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$1200(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    if-nez v1, :cond_3

    :try_start_1
    new-instance v1, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;-><init>(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$1;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;-><init>(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$1;)V

    #setter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->currentEditor:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$702(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    :try_start_2
    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->currentEditor:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$700(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_0
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .locals 3

    const/16 v0, 0x7d0

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->redundantOpCount:I

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v1, 0x0

    cmp-long v1, p3, v1

    if-gtz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSize <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-gtz p2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "valueCount <= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    iget-object v1, v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->readJournal()V

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->processJournal()V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    :goto_0
    return-object v6

    :catch_0
    move-exception v7

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->delete()V

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->rebuildJournal()V

    move-object v6, v0

    goto :goto_0
.end method

.method private processJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->currentEditor:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$700(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_0

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->size:J

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$1000(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->size:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    #setter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->currentEditor:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$702(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    const/4 v2, 0x0

    :goto_2
    iget v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x50

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    :cond_0
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static readFully(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    const/16 v3, 0x400

    new-array v0, v3, [C

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/StringWriter;->write([CII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v3

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    return-object v3
.end method

.method private readJournal()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    iget-object v8, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x2000

    invoke-direct {v3, v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    :try_start_0
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->appVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->valueCount:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v7

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    const-string v3, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-ge v3, v5, :cond_0

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    aget-object v1, v2, v8

    aget-object v3, v2, v6

    const-string v4, "REMOVE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    array-length v3, v2

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;

    invoke-direct {v0, p0, v1, v7}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;-><init>(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$1;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    aget-object v3, v2, v6

    const-string v4, "CLEAN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    array-length v3, v2

    iget v4, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->valueCount:I

    add-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_4

    #setter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v8}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$602(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;Z)Z

    #setter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->currentEditor:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    invoke-static {v0, v7}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$702(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    array-length v3, v2

    invoke-static {v2, v5, v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    #calls: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$800(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    aget-object v3, v2, v6

    const-string v4, "DIRTY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    array-length v3, v2

    if-ne v3, v5, :cond_5

    new-instance v3, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    invoke-direct {v3, p0, v0, v7}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;-><init>(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$1;)V

    #setter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->currentEditor:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$702(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    goto :goto_0

    :cond_5
    aget-object v3, v2, v6

    const-string v4, "READ"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    array-length v3, v2

    if-eq v3, v5, :cond_1

    :cond_6
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unexpected journal line: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    :cond_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v4, 0x2000

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    const-string v3, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->appVersion:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->currentEditor:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$700(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$1100(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$1100(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v5, 0x2000

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->size:J

    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->currentEditor:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$700(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->currentEditor:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$700(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->trimToSize()V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->close()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->trimToSize()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Snapshot;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->readable:Z
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$600(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->valueCount:I

    new-array v5, v1, [Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x0

    :goto_1
    :try_start_2
    iget v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->valueCount:I

    if-ge v9, v1, :cond_2

    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v8, v9}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v1, v5, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    goto :goto_0

    :cond_2
    :try_start_3
    iget v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->redundantOpCount:I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "READ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_3
    new-instance v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Snapshot;

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v8}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$1200(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)J

    move-result-wide v3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Snapshot;-><init>(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;Ljava/lang/String;J[Ljava/io/InputStream;Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public isClosed()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maxSize()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->maxSize:J

    return-wide v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;

    if-eqz v0, :cond_0

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->currentEditor:Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$700(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    const/4 v2, 0x0

    :goto_1
    :try_start_1
    iget v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_2
    :try_start_2
    iget-wide v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->size:J

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$1000(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->size:J

    #getter for: Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;->access$1000(Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->redundantOpCount:I

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public declared-synchronized size()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/cache/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
