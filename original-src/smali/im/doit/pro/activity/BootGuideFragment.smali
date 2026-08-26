.class public Lim/doit/pro/activity/BootGuideFragment;
.super Landroid/support/v4/app/Fragment;
.source "BootGuideFragment.java"


# static fields
.field private static final KEY_RESOURCE_ID:Ljava/lang/String; = "resource_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lim/doit/pro/activity/BootGuideFragment;
    .locals 3
    .param p0, "resId"    # I

    .prologue
    .line 16
    new-instance v1, Lim/doit/pro/activity/BootGuideFragment;

    invoke-direct {v1}, Lim/doit/pro/activity/BootGuideFragment;-><init>()V

    .line 17
    .local v1, "fragment":Lim/doit/pro/activity/BootGuideFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 18
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "resource_id"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    invoke-virtual {v1, v0}, Lim/doit/pro/activity/BootGuideFragment;->setArguments(Landroid/os/Bundle;)V

    .line 20
    return-object v1
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lim/doit/pro/activity/BootGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, "view":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 28
    invoke-virtual {p0}, Lim/doit/pro/activity/BootGuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "resource_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 29
    return-object v0
.end method
