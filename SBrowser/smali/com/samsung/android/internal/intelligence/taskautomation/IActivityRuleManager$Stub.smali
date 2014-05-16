.class public abstract Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub;
.super Landroid/os/Binder;
.source "IActivityRuleManager.java"

# interfaces
.implements Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.internal.intelligence.taskautomation.IActivityRuleManager"

.field static final TRANSACTION_aidl_addActivityRule:I = 0x4

.field static final TRANSACTION_aidl_addActivityRules:I = 0x5

.field static final TRANSACTION_aidl_disableActivityRule:I = 0x9

.field static final TRANSACTION_aidl_enableActivityRule:I = 0x8

.field static final TRANSACTION_aidl_getActivityRule:I = 0x3

.field static final TRANSACTION_aidl_getActivityRules:I = 0x2

.field static final TRANSACTION_aidl_getAllActivityRules:I = 0x1

.field static final TRANSACTION_aidl_removeActivityRule:I = 0x6

.field static final TRANSACTION_aidl_removeAllActivityRules:I = 0xa

.field static final TRANSACTION_aidl_updateActivityRule:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.internal.intelligence.taskautomation.IActivityRuleManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.android.internal.intelligence.taskautomation.IActivityRuleManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v5, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v6, "com.samsung.android.internal.intelligence.taskautomation.IActivityRuleManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v6, "com.samsung.android.internal.intelligence.taskautomation.IActivityRuleManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub;->aidl_getAllActivityRules(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_2
    const-string v6, "com.samsung.android.internal.intelligence.taskautomation.IActivityRuleManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub;->aidl_getActivityRules(Ljava/lang/String;II)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    :sswitch_3
    const-string v6, "com.samsung.android.internal.intelligence.taskautomation.IActivityRuleManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub;->aidl_getActivityRule(Ljava/lang/String;I)Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_0

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v5}, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string v6, "com.samsung.android.internal.intelligence.taskautomation.IActivityRuleManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;

    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub;->aidl_addActivityRule(Ljava/lang/String;Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;)I

    move-result v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v6, "com.samsung.android.internal.intelligence.taskautomation.IActivityRuleManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub;->aidl_addActivityRules(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    goto/16 :goto_0

    :sswitch_6
    const-string v6, "com.samsung.android.internal.intelligence.taskautomation.IActivityRuleManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub;->aidl_removeActivityRule(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_7
    const-string v6, "com.samsung.android.internal.intelligence.taskautomation.IActivityRuleManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;

    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub;->aidl_updateActivityRule(Ljava/lang/String;Lcom/samsung/android/internal/intelligence/taskautomation/ActivityRule;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :sswitch_8
    const-string v6, "com.samsung.android.internal.intelligence.taskautomation.IActivityRuleManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub;->aidl_enableActivityRule(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_9
    const-string v6, "com.samsung.android.internal.intelligence.taskautomation.IActivityRuleManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub;->aidl_disableActivityRule(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_a
    const-string v6, "com.samsung.android.internal.intelligence.taskautomation.IActivityRuleManager"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/internal/intelligence/taskautomation/IActivityRuleManager$Stub;->aidl_removeAllActivityRules(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
