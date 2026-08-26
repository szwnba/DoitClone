.class public Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "SigninWithGoogleDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SigninWithGoogleDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialogFragment"
.end annotation


# instance fields
.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 220
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 222
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 232
    iget-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public setDialog(Landroid/app/Dialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 226
    iput-object p1, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ErrorDialogFragment;->mDialog:Landroid/app/Dialog;

    .line 227
    return-void
.end method
