.class final Lcom/android/settings/bluetooth/MapProfile$MapServiceListener;
.super Ljava/lang/Object;
.source "MapProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MapProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MapProfile;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/MapProfile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settings/bluetooth/MapProfile;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/MapProfile;Lcom/android/settings/bluetooth/MapProfile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MapProfile$MapServiceListener;-><init>(Lcom/android/settings/bluetooth/MapProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2

    invoke-static {}, Lcom/android/settings/bluetooth/MapProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MapProfile"

    const-string v1, "Bluetooth service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settings/bluetooth/MapProfile;

    check-cast p2, Landroid/bluetooth/BluetoothMap;

    #setter for: Lcom/android/settings/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;
    invoke-static {v0, p2}, Lcom/android/settings/bluetooth/MapProfile;->access$102(Lcom/android/settings/bluetooth/MapProfile;Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap;

    iget-object v0, p0, Lcom/android/settings/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settings/bluetooth/MapProfile;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/bluetooth/MapProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/MapProfile;->access$202(Lcom/android/settings/bluetooth/MapProfile;Z)Z

    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    invoke-static {}, Lcom/android/settings/bluetooth/MapProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MapProfile"

    const-string v1, "Bluetooth service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MapProfile$MapServiceListener;->this$0:Lcom/android/settings/bluetooth/MapProfile;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/bluetooth/MapProfile;->mIsProfileReady:Z
    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/MapProfile;->access$202(Lcom/android/settings/bluetooth/MapProfile;Z)Z

    return-void
.end method
