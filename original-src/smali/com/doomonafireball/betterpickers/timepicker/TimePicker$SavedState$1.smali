.class Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState$1;
.super Ljava/lang/Object;
.source "TimePicker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 794
    new-instance v0, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;-><init>(Landroid/os/Parcel;Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 798
    new-array v0, p1, [Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState$1;->newArray(I)[Lcom/doomonafireball/betterpickers/timepicker/TimePicker$SavedState;

    move-result-object v0

    return-object v0
.end method
