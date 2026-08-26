.class Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;
.super Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ViewHolder;
.source "WidgetSelectBox3x3ConfigureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildViewHolder"
.end annotation


# instance fields
.field public nameTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    iput-object p1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;->this$1:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;

    .line 385
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;Landroid/content/Context;)V

    .line 386
    const v0, 0x7f0300b4

    invoke-static {p2, v0, p0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 388
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;->nameTV:Landroid/widget/TextView;

    .line 389
    return-void
.end method


# virtual methods
.method public setViewContent(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 398
    iget-object v1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;->this$1:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;

    invoke-virtual {v1, p1}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->getGroup(I)Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;

    move-result-object v0

    .line 399
    .local v0, "item":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;
    iget-object v1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;->nameTV:Landroid/widget/TextView;

    iget-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$GroupData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    return-void
.end method

.method public setViewContent(II)V
    .locals 3
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 392
    iget-object v1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;->this$1:Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;

    invoke-virtual {v1, p1, p2}, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter;->getChild(II)Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;

    move-result-object v0

    .line 393
    .local v0, "item":Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;
    iget-object v1, p0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ListAdapter$ChildViewHolder;->nameTV:Landroid/widget/TextView;

    iget-object v2, v0, Lim/doit/pro/activity/WidgetSelectBox3x3ConfigureActivity$ChildData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    return-void
.end method
