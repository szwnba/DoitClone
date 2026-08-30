.class Lim/doit/pro/exp/FavoritesActivity$5;
.super Ljava/lang/Object;
.source "FavoritesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/exp/FavoritesActivity;->showAddDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/exp/FavoritesActivity;

.field final synthetic val$d:Landroid/app/Dialog;

.field final synthetic val$name:Landroid/widget/EditText;

.field final synthetic val$url:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lim/doit/pro/exp/FavoritesActivity;Landroid/app/Dialog;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$5;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    iput-object p2, p0, Lim/doit/pro/exp/FavoritesActivity$5;->val$d:Landroid/app/Dialog;

    iput-object p3, p0, Lim/doit/pro/exp/FavoritesActivity$5;->val$name:Landroid/widget/EditText;

    iput-object p4, p0, Lim/doit/pro/exp/FavoritesActivity$5;->val$url:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 211
    iget-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$5;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 212
    iget-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$5;->val$name:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lim/doit/pro/exp/FavoritesActivity$5;->val$url:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_52

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2e

    goto :goto_52

    .line 215
    :cond_2e
    new-instance v1, Lim/doit/pro/exp/FavoritesActivity$Fav;

    invoke-direct {v1}, Lim/doit/pro/exp/FavoritesActivity$Fav;-><init>()V

    .line 216
    iput-object p1, v1, Lim/doit/pro/exp/FavoritesActivity$Fav;->n:Ljava/lang/String;

    iput-object v0, v1, Lim/doit/pro/exp/FavoritesActivity$Fav;->u:Ljava/lang/String;

    .line 217
    iget-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$5;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    invoke-static {p1}, Lim/doit/pro/exp/FavoritesActivity;->access$400(Lim/doit/pro/exp/FavoritesActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$5;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    invoke-static {p1}, Lim/doit/pro/exp/FavoritesActivity;->access$500(Lim/doit/pro/exp/FavoritesActivity;)V

    .line 219
    iget-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$5;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    invoke-static {p1}, Lim/doit/pro/exp/FavoritesActivity;->access$600(Lim/doit/pro/exp/FavoritesActivity;)V

    .line 220
    iget-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$5;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    const-string v0, "\u5df2\u6536\u85cf"

    invoke-static {p1, v0}, Lim/doit/pro/exp/FavoritesActivity;->access$300(Lim/doit/pro/exp/FavoritesActivity;Ljava/lang/String;)V

    .line 221
    return-void

    .line 214
    :cond_52
    :goto_52
    iget-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$5;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    const-string v0, "\u540d\u79f0\u548c\u7f51\u5740\u90fd\u8981\u586b"

    invoke-static {p1, v0}, Lim/doit/pro/exp/FavoritesActivity;->access$300(Lim/doit/pro/exp/FavoritesActivity;Ljava/lang/String;)V

    return-void
.end method
