.class Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;
.super Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ViewHolder;
.source "SelectProjectDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AddProjectViewHolder"
.end annotation


# instance fields
.field public addView:Lim/doit/pro/ui/component/NoEnterEditText;

.field final synthetic this$1:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;->this$1:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;

    .line 215
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;Landroid/content/Context;)V

    .line 216
    const v1, 0x7f030057

    invoke-static {p2, v1, p0}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 217
    const v1, 0x7f0b0039

    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 218
    .local v0, "iconView":Landroid/widget/ImageView;
    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    const v1, 0x7f0b0114

    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lim/doit/pro/ui/component/NoEnterEditText;

    iput-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;->addView:Lim/doit/pro/ui/component/NoEnterEditText;

    .line 220
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;->addView:Lim/doit/pro/ui/component/NoEnterEditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    .line 221
    const v5, 0x7f0a000e

    invoke-static {v5}, Lim/doit/pro/activity/utils/ViewUtils;->getInteger(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    .line 220
    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/NoEnterEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 222
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;->addView:Lim/doit/pro/ui/component/NoEnterEditText;

    const v2, 0x7f0c01ac

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/NoEnterEditText;->setHint(I)V

    .line 223
    iget-object v1, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;->addView:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v2, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder$1;

    invoke-direct {v2, p0}, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder$1;-><init>(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;)V

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/NoEnterEditText;->setOnDoneListener(Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;)V

    .line 244
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;)Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter$AddProjectViewHolder;->this$1:Lim/doit/pro/ui/component/SelectProjectDialog$ListAdapter;

    return-object v0
.end method


# virtual methods
.method public setViewContent(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 248
    return-void
.end method
