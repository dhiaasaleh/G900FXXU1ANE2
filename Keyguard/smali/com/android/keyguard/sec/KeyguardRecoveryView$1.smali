.class Lcom/android/keyguard/sec/KeyguardRecoveryView$1;
.super Ljava/lang/Object;
.source "KeyguardRecoveryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/KeyguardRecoveryView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/KeyguardRecoveryView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/KeyguardRecoveryView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView$1;->this$0:Lcom/android/keyguard/sec/KeyguardRecoveryView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/KeyguardRecoveryView$1;->this$0:Lcom/android/keyguard/sec/KeyguardRecoveryView;

    #getter for: Lcom/android/keyguard/sec/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/KeyguardRecoveryView;->access$000(Lcom/android/keyguard/sec/KeyguardRecoveryView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    return-void
.end method
