.class Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter$ViewHolder;
.super Landroid/widget/RelativeLayout;
.source "TagFilterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public nameTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 208
    iput-object p1, p0, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter$ViewHolder;->this$1:Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter;

    .line 209
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 210
    const v0, 0x7f030058

    invoke-static {p2, v0, p0}, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter$ViewHolder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 211
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter$ViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/TagFilterDialog$ListAdapter$ViewHolder;->nameTV:Landroid/widget/TextView;

    .line 212
    return-void
.end method
