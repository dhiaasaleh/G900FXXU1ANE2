.class public abstract Landroid/net/wifi/IWifiOffloadManager$Stub;
.super Landroid/os/Binder;
.source "IWifiOffloadManager.java"

# interfaces
.implements Landroid/net/wifi/IWifiOffloadManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/IWifiOffloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/IWifiOffloadManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.IWifiOffloadManager"

.field static final TRANSACTION_blockWifiPopup:I = 0x10

.field static final TRANSACTION_canAppOffload:I = 0x19

.field static final TRANSACTION_checkAppForWiFiOffloading:I = 0x1f

.field static final TRANSACTION_checkAppNeedsMoveToFront:I = 0x1b

.field static final TRANSACTION_clearAllAccessPoints:I = 0xe

.field static final TRANSACTION_deleteNetwork:I = 0x8

.field static final TRANSACTION_getAvailableSSIDNames:I = 0x9

.field static final TRANSACTION_getCDMABaseStationID:I = 0x7

.field static final TRANSACTION_getIntelligentWifiEnabled:I = 0x12

.field static final TRANSACTION_getLastPkgName:I = 0x1d

.field static final TRANSACTION_getLastWifiScannedTime:I = 0x1e

.field static final TRANSACTION_isAppInWiFiBlackList:I = 0x4

.field static final TRANSACTION_isAppinWhiteList:I = 0x1a

.field static final TRANSACTION_isDontUseWifiPressed:I = 0x13

.field static final TRANSACTION_isMobileDataActive:I = 0x1

.field static final TRANSACTION_isWifiConnected:I = 0xf

.field static final TRANSACTION_isWifiOnlyApp:I = 0xd

.field static final TRANSACTION_notifyDialogDisplayed:I = 0x1c

.field static final TRANSACTION_resetCurrentTestBaseStationID:I = 0xc

.field static final TRANSACTION_resetNeverTurnOnWifi:I = 0x17

.field static final TRANSACTION_setAppRunOverWiFiResult:I = 0x15

.field static final TRANSACTION_setCurrentTestBaseStationID:I = 0xa

.field static final TRANSACTION_setDontuseWifiPressed:I = 0x14

.field static final TRANSACTION_setNeverTurnOnWifi:I = 0x18

.field static final TRANSACTION_startDataActivityTimer:I = 0x5

.field static final TRANSACTION_startDontUseWiFiPressedTimer:I = 0x16

.field static final TRANSACTION_stopDataActivityTimer:I = 0x6

.field static final TRANSACTION_tryToTurnOnWifi:I = 0x2

.field static final TRANSACTION_updateBaseStationIDs:I = 0xb

.field static final TRANSACTION_updateDialogStatus:I = 0x3

.field static final TRANSACTION_wasWiFiReallyOn:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiOffloadManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "android.net.wifi.IWifiOffloadManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/IWifiOffloadManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/net/wifi/IWifiOffloadManager;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/net/wifi/IWifiOffloadManager$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/wifi/IWifiOffloadManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->isMobileDataActive()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiOffloadManager$Stub;->tryToTurnOnWifi(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v5, v4

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :sswitch_3
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->updateDialogStatus(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->isAppInWiFiBlackList(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    move v5, v4

    :cond_2
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_5
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->startDataActivityTimer()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_6
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->stopDataActivityTimer()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_7
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->getCDMABaseStationID()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_8
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->deleteNetwork(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->getAvailableSSIDNames()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->setCurrentTestBaseStationID(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiOffloadManager$Stub;->updateBaseStationIDs(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->resetCurrentTestBaseStationID()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_d
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->isWifiOnlyApp(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_3

    move v5, v4

    :cond_3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_e
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->clearAllAccessPoints()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_f
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->isWifiConnected()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    move v5, v4

    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_10
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    move v1, v4

    :goto_2
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiOffloadManager$Stub;->blockWifiPopup(IZ)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_5

    move v5, v4

    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_6
    move v1, v5

    goto :goto_2

    :sswitch_11
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->wasWiFiReallyOn()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_7

    move v5, v4

    :cond_7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_12
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->getIntelligentWifiEnabled()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_8

    move v5, v4

    :cond_8
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_13
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->isDontUseWifiPressed()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_9

    move v5, v4

    :cond_9
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_14
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    move v0, v4

    :goto_3
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->setDontuseWifiPressed(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_a
    move v0, v5

    goto :goto_3

    :sswitch_15
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    move v1, v4

    :goto_4
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/IWifiOffloadManager$Stub;->setAppRunOverWiFiResult(IZ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_b
    move v1, v5

    goto :goto_4

    :sswitch_16
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->startDontUseWiFiPressedTimer()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_17
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->resetNeverTurnOnWifi()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_18
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->setNeverTurnOnWifi()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_19
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->canAppOffload(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_c

    move v5, v4

    :cond_c
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1a
    const-string v6, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->isAppinWhiteList(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_d

    move v5, v4

    :cond_d
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :sswitch_1b
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->checkAppNeedsMoveToFront(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1c
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->notifyDialogDisplayed(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_1d
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->getLastPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1e
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->getLastWifiScannedTime()J

    move-result-wide v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :sswitch_1f
    const-string v5, "android.net.wifi.IWifiOffloadManager"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    :goto_5
    invoke-virtual {p0, v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->checkAppForWiFiOffloading(Landroid/content/Intent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
