.class Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkConnectivityIntentFilter;
.super Landroid/content/IntentFilter;
.source "NetworkConnectivityReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkConnectivityIntentFilter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/mainactivity/controller/NetworkConnectivityReceiver$NetworkConnectivityIntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method
