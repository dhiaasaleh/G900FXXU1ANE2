.class Lcom/android/phone/CancelRejectModeAlertDialog$8;
.super Ljava/lang/Object;
.source "CancelRejectModeAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CancelRejectModeAlertDialog;->showBlockModeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CancelRejectModeAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/CancelRejectModeAlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CancelRejectModeAlertDialog$8;->this$0:Lcom/android/phone/CancelRejectModeAlertDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/CancelRejectModeAlertDialog$8;->this$0:Lcom/android/phone/CancelRejectModeAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/CancelRejectModeAlertDialog;->finish()V

    return-void
.end method
