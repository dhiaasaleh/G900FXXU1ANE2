.class Lcom/android/phone/callsettings/PhoneNumberLocator$5;
.super Ljava/lang/Object;
.source "PhoneNumberLocator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/PhoneNumberLocator;->showChargesNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/PhoneNumberLocator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$5;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$5;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->writeChargesNotificationPrefrence()V

    iget-object v0, p0, Lcom/android/phone/callsettings/PhoneNumberLocator$5;->this$0:Lcom/android/phone/callsettings/PhoneNumberLocator;

    #calls: Lcom/android/phone/callsettings/PhoneNumberLocator;->startDownloadThread()V
    invoke-static {v0}, Lcom/android/phone/callsettings/PhoneNumberLocator;->access$1000(Lcom/android/phone/callsettings/PhoneNumberLocator;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
