.class Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doomonafireball/betterpickers/timepicker/TimePicker;
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
            "Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAmPmState:I

.field mInput:[I

.field mInputPointer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 792
    new-instance v0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState$1;

    invoke-direct {v0}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState$1;-><init>()V

    .line 791
    sput-object v0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 800
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 777
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 778
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;->mInputPointer:I

    .line 779
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;->mInput:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 780
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;->mAmPmState:I

    .line 781
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;)V
    .locals 0

    .prologue
    .line 776
    invoke-direct {p0, p1}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 773
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 774
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 785
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 786
    iget v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;->mInputPointer:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;->mInput:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 788
    iget v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;->mAmPmState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    return-void
.end method
