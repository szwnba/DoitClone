.class Lim/doit/pro/exp/FavoritesActivity$6;
.super Ljava/lang/Object;
.source "FavoritesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/exp/FavoritesActivity;->confirmDelete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/exp/FavoritesActivity;

.field final synthetic val$d:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lim/doit/pro/exp/FavoritesActivity;Landroid/app/Dialog;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$6;->this$0:Lim/doit/pro/exp/FavoritesActivity;

    iput-object p2, p0, Lim/doit/pro/exp/FavoritesActivity$6;->val$d:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 235
    iget-object p1, p0, Lim/doit/pro/exp/FavoritesActivity$6;->val$d:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
