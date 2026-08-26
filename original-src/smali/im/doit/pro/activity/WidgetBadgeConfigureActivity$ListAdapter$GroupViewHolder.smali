.class Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$GroupViewHolder;
.super Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ViewHolder;
.source "WidgetBadgeConfigureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupViewHolder"
.end annotation


# instance fields
.field public nameTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 353
    iput-object p1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$GroupViewHolder;->this$1:Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;

    .line 354
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;Landroid/content/Context;)V

    .line 355
    const v0, 0x7f0300b5

    invoke-static {p2, v0, p0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$GroupViewHolder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 357
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$GroupViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$GroupViewHolder;->nameTV:Landroid/widget/TextView;

    .line 358
    return-void
.end method


# virtual methods
.method public setViewContent(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 362
    iget-object v1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$GroupViewHolder;->this$1:Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;

    invoke-virtual {v1, p1}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->getGroup(I)Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;

    move-result-object v0

    .line 363
    .local v0, "item":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;
    iget-object v1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$GroupViewHolder;->nameTV:Landroid/widget/TextView;

    iget-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget-boolean v1, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->isCollapse:Z

    if-eqz v1, :cond_0

    .line 365
    iget-object v1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$GroupViewHolder;->nameTV:Landroid/widget/TextView;

    .line 369
    const v2, 0x7f02009b

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 365
    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 378
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$GroupViewHolder;->nameTV:Landroid/widget/TextView;

    .line 375
    const v2, 0x7f02009a

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 372
    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
