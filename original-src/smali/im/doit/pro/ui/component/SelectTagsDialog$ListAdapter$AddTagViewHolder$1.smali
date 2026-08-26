.class Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder$1;
.super Ljava/lang/Object;
.source "SelectTagsDialog.java"

# interfaces
.implements Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;-><init>(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder$1;->this$2:Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroid/widget/EditText;)V
    .locals 4
    .param p1, "v"    # Landroid/widget/EditText;

    .prologue
    const/4 v3, 0x0

    .line 264
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-static {v3, v0}, Lim/doit/pro/utils/ToastUtils;->tagExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    invoke-virtual {p1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 271
    invoke-static {p1}, Lim/doit/pro/activity/utils/ViewUtils;->hideSoftKeyboard(Landroid/widget/EditText;)V

    .line 272
    new-instance v1, Lim/doit/pro/model/Tag;

    invoke-direct {v1}, Lim/doit/pro/model/Tag;-><init>()V

    .line 273
    .local v1, "tag":Lim/doit/pro/model/Tag;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/model/Tag;->setUuid(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1, v0}, Lim/doit/pro/model/Tag;->setName(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->tagDao:Lim/doit/pro/db/persist/TagDao;

    invoke-virtual {v2, v1}, Lim/doit/pro/db/persist/TagDao;->createAndSaveLog(Lim/doit/pro/model/Tag;)V

    .line 276
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder$1;->this$2:Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;->access$0(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;)Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectTagsDialog;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$3(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 277
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder$1;->this$2:Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;->access$0(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;)Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectTagsDialog;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    .line 278
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder$1;->this$2:Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;->access$0(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;)Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectTagsDialog;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1}, Lim/doit/pro/model/Tag;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_2
    iget-object v2, p0, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder$1;->this$2:Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;->access$0(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter$AddTagViewHolder;)Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;->access$2(Lim/doit/pro/ui/component/SelectTagsDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectTagsDialog;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectTagsDialog;->access$4(Lim/doit/pro/ui/component/SelectTagsDialog;)V

    goto :goto_0
.end method
