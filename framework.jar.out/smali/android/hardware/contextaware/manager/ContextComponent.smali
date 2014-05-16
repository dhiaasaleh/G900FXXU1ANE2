.class public abstract Landroid/hardware/contextaware/manager/ContextComponent;
.super Ljava/lang/Object;
.source "ContextComponent.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/IContextProvider;
.implements Landroid/hardware/contextaware/manager/IContextObservable;
.implements Landroid/hardware/contextaware/manager/ICmdProcessResultObservable;


# instance fields
.field private final mContextBean:Landroid/hardware/contextaware/manager/ContextBean;

.field private final mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/contextaware/manager/ContextBean;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextBean;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextBean:Landroid/hardware/contextaware/manager/ContextBean;

    new-instance v0, Landroid/hardware/contextaware/manager/ContextObserverManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextObserverManager;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;

    return-void
.end method

.method private clearContextBean()V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextBean:Landroid/hardware/contextaware/manager/ContextBean;

    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextBean;->clearContextBean()V

    return-void
.end method

.method private notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->display()V

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/manager/ContextObserverManager;->notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->clearContextBean()V

    return-void
.end method


# virtual methods
.method protected checkNotifyCondition()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->clearContextBean()V

    return-void
.end method

.method protected clearAccordingToRequest()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->clear()V

    return-void
.end method

.method public disable()V
    .locals 0

    return-void
.end method

.method protected disableForStop(I)V
    .locals 0

    return-void
.end method

.method protected display()V
    .locals 0

    return-void
.end method

.method public enable()V
    .locals 0

    return-void
.end method

.method protected enableForStart(I)V
    .locals 0

    return-void
.end method

.method protected final getContextBean()Landroid/hardware/contextaware/manager/ContextBean;
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextBean:Landroid/hardware/contextaware/manager/ContextBean;

    return-object v0
.end method

.method protected getContextInfo(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;)V
    .locals 0

    return-void
.end method

.method public abstract getContextProvider()Landroid/hardware/contextaware/manager/ContextProvider;
.end method

.method public getContextType()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method protected getInitContextBundle()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getUsedServiceCount()I
    .locals 2

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedServiceCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final getUsedSubCollectionCount()I
    .locals 2

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected final getUsedTotalCount()I
    .locals 2

    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected initialize()V
    .locals 0

    return-void
.end method

.method protected final isRunning()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getUsedTotalCount()I

    move-result v1

    if-lt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/contextaware/manager/ContextObserverManager;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected notifyFaultDetectionResult()V
    .locals 0

    return-void
.end method

.method protected notifyInitContext()V
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getInitContextBundle()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Landroid/hardware/contextaware/manager/ContextComponent;->notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final notifyObserver()V
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->checkNotifyCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextBean;->getContextBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/hardware/contextaware/manager/ContextComponent;->notifyObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->disable()V

    return-void
.end method

.method protected registerApPowerObserver()V
    .locals 0

    return-void
.end method

.method public final registerCmdProcessResultObserver(Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/manager/ContextObserverManager;->registerCmdProcessResultObserver(Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;)V

    return-void
.end method

.method public final registerObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/manager/ContextObserverManager;->registerObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    return-void
.end method

.method protected reset()V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextComponent;->enable()V

    return-void
.end method

.method protected final setProperty(ILjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string v0, "value is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextComponent;->setPropertyValue(ILjava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setPropertyValue(ILjava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public abstract start(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
.end method

.method public abstract stop(Landroid/hardware/contextaware/manager/ContextAwareService$Listener;I)V
.end method

.method protected terminate()V
    .locals 0

    return-void
.end method

.method protected unregisterApPowerObserver()V
    .locals 0

    return-void
.end method

.method public final unregisterCmdProcessResultObserver(Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/manager/ContextObserverManager;->unregisterCmdProcessResultObserver(Landroid/hardware/contextaware/manager/fault/ICmdProcessResultObserver;)V

    return-void
.end method

.method public final unregisterObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 1

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextComponent;->mContextObserver:Landroid/hardware/contextaware/manager/ContextObserverManager;

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/manager/ContextObserverManager;->unregisterObserver(Landroid/hardware/contextaware/manager/IContextObserver;)V

    return-void
.end method

.method public updateApPowerStatusForPreparedCollection()V
    .locals 0

    return-void
.end method
