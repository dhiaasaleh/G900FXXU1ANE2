.class Lcom/android/contacts/datepicker/DatePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/datepicker/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/datepicker/DatePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mFocusState:I

.field private final mHasYear:Z

.field private final mImmActive:Z

.field private final mMonth:I

.field private final mYear:I

.field private final mYearOptional:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/contacts/datepicker/DatePicker$SavedState$1;

    invoke-direct {v0}, Lcom/android/contacts/datepicker/DatePicker$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYear:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mMonth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mDay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mHasYear:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYearOptional:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mFocusState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mImmActive:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/contacts/datepicker/DatePicker$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/contacts/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIZZIZ)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYear:I

    iput p3, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mMonth:I

    iput p4, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mDay:I

    iput-boolean p5, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mHasYear:Z

    iput-boolean p6, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYearOptional:Z

    iput p7, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mFocusState:I

    iput-boolean p8, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mImmActive:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIZZIZLcom/android/contacts/datepicker/DatePicker$1;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/contacts/datepicker/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIZZIZ)V

    return-void
.end method


# virtual methods
.method public getDay()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYear:I

    return v0
.end method

.method public hasYear()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mHasYear:Z

    return v0
.end method

.method public isFocusState()I
    .locals 1

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mFocusState:I

    return v0
.end method

.method public isImmActive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mImmActive:Z

    return v0
.end method

.method public isYearOptional()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYearOptional:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mHasYear:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mYearOptional:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mFocusState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/contacts/datepicker/DatePicker$SavedState;->mImmActive:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
