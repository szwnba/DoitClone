.class Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter$ViewHolder;
.super Landroid/widget/RelativeLayout;
.source "SigninWithGoogleDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public nameTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    iput-object p1, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter$ViewHolder;->this$1:Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter;

    .line 191
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 192
    const v0, 0x7f030058

    invoke-static {p2, v0, p0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter$ViewHolder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 193
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/SigninWithGoogleDialogActivity$ListAdapter$ViewHolder;->nameTV:Landroid/widget/TextView;

    .line 194
    return-void
.end method
