.class Lcom/android/settings/accessibility/AccessibilitySettings$7;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

.field final synthetic val$checkShortcut:[Z


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettings;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    iput-object p2, p0, Lcom/android/settings/accessibility/AccessibilitySettings$7;->val$checkShortcut:[Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings$7;->this$0:Lcom/android/settings/accessibility/AccessibilitySettings;

    #calls: Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->access$500(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_key_hold"

    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings$7;->val$checkShortcut:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
