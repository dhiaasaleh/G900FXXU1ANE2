.class Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;
.super Ljava/lang/Object;
.source "AnswerMemoRecorderManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnswerMemoRecorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecorderServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerMemoRecorderManager;


# direct methods
.method private constructor <init>(Lcom/android/incallui/AnswerMemoRecorderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/AnswerMemoRecorderManager;Lcom/android/incallui/AnswerMemoRecorderManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;-><init>(Lcom/android/incallui/AnswerMemoRecorderManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    iget-object v1, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    new-instance v2, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceCallback;

    iget-object v3, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceCallback;-><init>(Lcom/android/incallui/AnswerMemoRecorderManager;Lcom/android/incallui/AnswerMemoRecorderManager$1;)V

    #setter for: Lcom/android/incallui/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    invoke-static {v1, v2}, Lcom/android/incallui/AnswerMemoRecorderManager;->access$102(Lcom/android/incallui/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    iget-object v1, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    invoke-static {p2}, Lcom/android/phone/IAnswerMemoRecorderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v2

    #setter for: Lcom/android/incallui/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v1, v2}, Lcom/android/incallui/AnswerMemoRecorderManager;->access$302(Lcom/android/incallui/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderService;)Lcom/android/phone/IAnswerMemoRecorderService;

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    #getter for: Lcom/android/incallui/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v1}, Lcom/android/incallui/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    #getter for: Lcom/android/incallui/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    invoke-static {v2}, Lcom/android/incallui/AnswerMemoRecorderManager;->access$100(Lcom/android/incallui/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/phone/IAnswerMemoRecorderService;->registerCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerCallback() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    #getter for: Lcom/android/incallui/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v1}, Lcom/android/incallui/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    #getter for: Lcom/android/incallui/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    invoke-static {v1}, Lcom/android/incallui/AnswerMemoRecorderManager;->access$100(Lcom/android/incallui/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    #getter for: Lcom/android/incallui/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v1}, Lcom/android/incallui/AnswerMemoRecorderManager;->access$300(Lcom/android/incallui/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    #getter for: Lcom/android/incallui/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    invoke-static {v2}, Lcom/android/incallui/AnswerMemoRecorderManager;->access$100(Lcom/android/incallui/AnswerMemoRecorderManager;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/phone/IAnswerMemoRecorderService;->unregisterCallback(Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    #setter for: Lcom/android/incallui/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    invoke-static {v1, v4}, Lcom/android/incallui/AnswerMemoRecorderManager;->access$102(Lcom/android/incallui/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    iget-object v1, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    #setter for: Lcom/android/incallui/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v1, v4}, Lcom/android/incallui/AnswerMemoRecorderManager;->access$302(Lcom/android/incallui/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderService;)Lcom/android/phone/IAnswerMemoRecorderService;

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AnswerMemoRecorderManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterCallback() -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    #setter for: Lcom/android/incallui/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    invoke-static {v1, v4}, Lcom/android/incallui/AnswerMemoRecorderManager;->access$102(Lcom/android/incallui/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    iget-object v1, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    #setter for: Lcom/android/incallui/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v1, v4}, Lcom/android/incallui/AnswerMemoRecorderManager;->access$302(Lcom/android/incallui/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderService;)Lcom/android/phone/IAnswerMemoRecorderService;

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    #setter for: Lcom/android/incallui/AnswerMemoRecorderManager;->mRecorderCallback:Lcom/android/phone/IAnswerMemoRecorderServiceCallback;
    invoke-static {v2, v4}, Lcom/android/incallui/AnswerMemoRecorderManager;->access$102(Lcom/android/incallui/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderServiceCallback;)Lcom/android/phone/IAnswerMemoRecorderServiceCallback;

    iget-object v2, p0, Lcom/android/incallui/AnswerMemoRecorderManager$RecorderServiceConnection;->this$0:Lcom/android/incallui/AnswerMemoRecorderManager;

    #setter for: Lcom/android/incallui/AnswerMemoRecorderManager;->mRecorderSrv:Lcom/android/phone/IAnswerMemoRecorderService;
    invoke-static {v2, v4}, Lcom/android/incallui/AnswerMemoRecorderManager;->access$302(Lcom/android/incallui/AnswerMemoRecorderManager;Lcom/android/phone/IAnswerMemoRecorderService;)Lcom/android/phone/IAnswerMemoRecorderService;

    throw v1
.end method
