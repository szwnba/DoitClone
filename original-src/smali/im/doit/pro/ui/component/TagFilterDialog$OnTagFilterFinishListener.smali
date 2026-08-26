.class public interface abstract Lim/doit/pro/ui/component/TagFilterDialog$OnTagFilterFinishListener;
.super Ljava/lang/Object;
.source "TagFilterDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/TagFilterDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTagFilterFinishListener"
.end annotation


# virtual methods
.method public abstract selectAllTags()V
.end method

.method public abstract selectTagsComplete(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract selectUntagged()V
.end method
