.class Lcom/android/keyguard/KeyguardHostView$14;
.super Lcom/android/keyguard/KeyguardActivityLauncher;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostView$14;->this$0:Lcom/android/keyguard/KeyguardHostView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardActivityLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$14;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$1400(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$14;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$3200(Lcom/android/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostView$14;->this$0:Lcom/android/keyguard/KeyguardHostView;

    #getter for: Lcom/android/keyguard/KeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardHostView;->access$2100(Lcom/android/keyguard/KeyguardHostView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method
