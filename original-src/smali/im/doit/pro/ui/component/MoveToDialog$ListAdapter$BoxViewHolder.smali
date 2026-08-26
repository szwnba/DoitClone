.class Lim/doit/pro/ui/component/MoveToDialog$ListAdapter$BoxViewHolder;
.super Lim/doit/pro/ui/component/MoveToDialog$ListAdapter$ViewHolder;
.source "MoveToDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BoxViewHolder"
.end annotation


# instance fields
.field public nameTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 277
    iput-object p1, p0, Lim/doit/pro/ui/component/MoveToDialog$ListAdapter$BoxViewHolder;->this$1:Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;

    .line 278
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/MoveToDialog$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;Landroid/content/Context;)V

    .line 279
    const v0, 0x7f030058

    invoke-static {p2, v0, p0}, Lim/doit/pro/ui/component/MoveToDialog$ListAdapter$BoxViewHolder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 280
    const v0, 0x7f020046

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/MoveToDialog$ListAdapter$BoxViewHolder;->setBackgroundResource(I)V

    .line 281
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/MoveToDialog$ListAdapter$BoxViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog$ListAdapter$BoxViewHolder;->nameTV:Landroid/widget/TextView;

    .line 282
    return-void
.end method


# virtual methods
.method public setViewContent(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog$ListAdapter$BoxViewHolder;->this$1:Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;

    invoke-virtual {v1, p1}, Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;->getItem(I)Lim/doit/pro/ui/component/MoveToDialog$ListItemData;

    move-result-object v0

    .line 287
    .local v0, "item":Lim/doit/pro/ui/component/MoveToDialog$ListItemData;
    iget-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog$ListAdapter$BoxViewHolder;->nameTV:Landroid/widget/TextView;

    iget v2, v0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->name:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 288
    iget-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog$ListAdapter$BoxViewHolder;->nameTV:Landroid/widget/TextView;

    .line 289
    iget v2, v0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->icon:I

    invoke-static {v2}, Lim/doit/pro/activity/utils/ViewUtils;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 288
    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 290
    iget-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog$ListAdapter$BoxViewHolder;->this$1:Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;

    invoke-static {v1}, Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;)Lim/doit/pro/ui/component/MoveToDialog;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/ui/component/MoveToDialog;->access$0(Lim/doit/pro/ui/component/MoveToDialog;)Landroid/widget/ListView;

    move-result-object v1

    iget-boolean v2, v0, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;->selected:Z

    invoke-virtual {v1, p1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 291
    return-void
.end method
