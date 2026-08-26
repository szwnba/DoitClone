.class public final enum Lcom/evernote/client/android/EvernoteSession$EvernoteService;
.super Ljava/lang/Enum;
.source "EvernoteSession.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evernote/client/android/EvernoteSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EvernoteService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/evernote/client/android/EvernoteSession$EvernoteService;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/evernote/client/android/EvernoteSession$EvernoteService;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic ENUM$VALUES:[Lcom/evernote/client/android/EvernoteSession$EvernoteService;

.field public static final enum PRODUCTION:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

.field public static final enum SANDBOX:Lcom/evernote/client/android/EvernoteSession$EvernoteService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    const-string v1, "SANDBOX"

    invoke-direct {v0, v1, v2}, Lcom/evernote/client/android/EvernoteSession$EvernoteService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->SANDBOX:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    .line 100
    new-instance v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    const-string v1, "PRODUCTION"

    invoke-direct {v0, v1, v3}, Lcom/evernote/client/android/EvernoteSession$EvernoteService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->PRODUCTION:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    sget-object v1, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->SANDBOX:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    aput-object v1, v0, v2

    sget-object v1, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->PRODUCTION:Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    aput-object v1, v0, v3

    sput-object v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->ENUM$VALUES:[Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    .line 113
    new-instance v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService$1;

    invoke-direct {v0}, Lcom/evernote/client/android/EvernoteSession$EvernoteService$1;-><init>()V

    sput-object v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 123
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    return-object v0
.end method

.method public static values()[Lcom/evernote/client/android/EvernoteSession$EvernoteService;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->ENUM$VALUES:[Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    array-length v1, v0

    new-array v2, v1, [Lcom/evernote/client/android/EvernoteSession$EvernoteService;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/evernote/client/android/EvernoteSession$EvernoteService;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    return-void
.end method
