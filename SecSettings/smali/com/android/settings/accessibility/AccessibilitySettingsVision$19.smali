.class Lcom/android/settings/accessibility/AccessibilitySettingsVision$19;
.super Ljava/lang/Object;
.source "AccessibilitySettingsVision.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsVision;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$19;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsVision$19;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsVision;

    #getter for: Lcom/android/settings/accessibility/AccessibilitySettingsVision;->mColorBlind:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettingsVision;->access$1100(Lcom/android/settings/accessibility/AccessibilitySettingsVision;)Landroid/preference/SwitchPreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
