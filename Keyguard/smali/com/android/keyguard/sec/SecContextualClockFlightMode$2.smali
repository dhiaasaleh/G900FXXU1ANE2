.class Lcom/android/keyguard/sec/SecContextualClockFlightMode$2;
.super Landroid/os/Handler;
.source "SecContextualClockFlightMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecContextualClockFlightMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecContextualClockFlightMode;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecContextualClockFlightMode;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode$2;->this$0:Lcom/android/keyguard/sec/SecContextualClockFlightMode;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecContextualClockFlightMode$2;->this$0:Lcom/android/keyguard/sec/SecContextualClockFlightMode;

    #calls: Lcom/android/keyguard/sec/SecContextualClockFlightMode;->handleUpdateClock()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecContextualClockFlightMode;->access$100(Lcom/android/keyguard/sec/SecContextualClockFlightMode;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12cb
        :pswitch_0
    .end packed-switch
.end method
